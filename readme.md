# Welcome to WhatsappBot Gem 👋
![Version](https://img.shields.io/badge/version-1.3.2-blue.svg?cacheSeconds=2592000)
[![Twitter: mujadded](https://img.shields.io/twitter/follow/mujadded.svg?style=social)](https://twitter.com/mujadded)

> This gem lets you send whatsapp message without using its api only whats app web. It lets you log in with webdriver and then you can send message with your app. It can help if you want to make a app that can send message but you dont want to buy any app


## Dependencies

To use this gem properly we need to install selenium webdriver and also the chrome driver

### Selenium gem install

```sh
gem install selenium-webdriver
```

### Chrome driver

To install the chrome driver, please follow:

For Ubuntu:
[Ubutu install](https://tecadmin.net/setup-selenium-chromedriver-on-ubuntu/)

For Mac:
[Mac install](https://www.kenst.com/2015/03/installing-chromedriver-on-mac-osx/)

For Windows:
[Windows install](https://www.kenst.com/2019/02/installing-chromedriver-on-windows/)

## Install

To install the latest gem 

```sh
gem install whatsapp_bot
```

## Usage

First initalize the scrapper.

```sh
whatsapp_bot = WhatsappBot.new
```
First you have to log in by reading the qr code with your phone

Then to send message

```
whatsapp_bot.send_message(to: 'contact exact name', text: 'your text')
```
## Author

👤 **Mujadded Al Rabbani Alif**

* Twitter: [@mujadded](https://twitter.com/mujadded)
* Github: [@mujadded](https://github.com/mujadded)

## Show your support

Give a ⭐️ if this project helped you!

## Contributions

Contributions are most welcome 😍

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
