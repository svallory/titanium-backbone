## titanium-backbone

Titanium-backbone is a framework for building native iOS and Android
apps using Titanium and Backbone.

### Current status

This project is in very early stages of extraction from a production
[mobile banking
application](http://itunes.apple.com/us/app/sf-fire-credit-union-mobile/id492113880?mt=8),
but the ideas and patterns extracted have worked very well within this
large app. We're taking the time to refactor as we extract so it should
be even cleaner.

### Installation

#### Install Titanium SDK

Visit the [Titanium download page](http://www.appcelerator.com/products/download/) and follow the instructions from there to download Titanium Studio (and the Titanium SDK), or download the latest version of the Titanium SDK directly [OS X only](http://api.appcelerator.net/p/v1/release-download?token=W4vYRgf4). Prior to running an app generated by titanium-backbone you'll need to set the TITANIUM_DIR environment variable to point to your install of the SDK. For example:

```console
$ export TITANIUM_DIR=~/Library/Application\ Support/Titanium/mobilesdk/osx/1.8.2
```

_See [the 1.8.2 announcement post](http://developer.appcelerator.com/blog/2012/02/titanium-mobile-sdk-1-8-2-is-available-now.html/comment-page-1#comment-87316) for direct links to the Titanium SDK on other devices._

#### Clone the project to your development machine:

```console
$ git clone git@github.com:trabian/titanium-backbone.git
$ cd titanium-backbone
```

#### Install package dependencies

```console
$ npm install
```

#### Run the app generator to create a new mobile app

```console
$ ./bin/titanium-backbone new [app name]
# Run ./bin/titanium-backbone new --help for instructions
```

_Optional:_ Install and run the app generator globally by running:

```console
$ npm install -g
$ titanium-backbone new --help
```
