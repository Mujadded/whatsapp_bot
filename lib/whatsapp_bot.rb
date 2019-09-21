require "selenium-webdriver"

class WhatsappBot
  URL = "https://web.whatsapp.com/"

  def initialize
    @driver = Selenium::WebDriver.for :chrome
    @driver.get(URL)
    @driver.find_element(css: '[name="rememberMe"]').click
    @logged_in = false
  end

  def logged_in?
    @logged_in
  end

  def try_logging_in
    @driver.find_element(class: "landing-title")
    @logged_in = false
    puts "Please log in with your phone in the chrome driver"
  rescue Selenium::WebDriver::Error::NoSuchElementError => e
    @logged_in = true
  end

  def send_message(to:, text:)
    if (logged_in?)
      return send_text_message(to, text)
    else
      if (try_logging_in)
        return send_text_message(to, text)
      end
      puts "Not logged in"
      return false
    end
  rescue Selenium::WebDriver::Error::NoSuchElementError => e
    puts "Couldnt find the user please check if name is correct or try again after some seconds"
    return false
  end

  private

  def send_text_message(to, text)
    @driver.find_element(css: "[title='#{to}']").click
    all_messages = text.split("\n")
    text_box = @driver.find_element(css: "[contenteditable='true']")
    all_messages.each do |message|
      begin
        text_box.send_keys(message)
      rescue Selenium::WebDriver::Error::UnknownError => e
        text_box.send_keys(message.encode("iso-8859-1", :invalid => :replace, :undef => :replace).encode("utf-8"))
      end
      text_box.send_keys [:shift, :enter]
    end
    @driver.find_element(css: 'span[data-icon="send"]').click
    return @driver.find_elements(css: ".message-out").last.text.include?(text)
  end
end
