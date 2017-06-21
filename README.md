![](https://lh4.googleusercontent.com/-PVw-ZUM9vV8/UuWeH51os0I/AAAAAAAAD6M/0Ikg7viJftQ/w1286-h566-no/hackathon-starter-logo.jpg)

iOS MVVM Project Template
=========================

> Looking for MVC boilerplate? [Click here](https://github.com/asiantechinc/at-boilerplate-ios-mvc).

*Every app we build is unique, but best practices should be consistent between projects. Here on [AsianTech](http://asiantech.vn) iOS team, we’ve been baking more and more of those best practices into a template we use for starting any new project.
This ensures consistency in our work: we don’t repeat mistakes, we use known libraries that we all have some experience with, and any one of us can get up to speed on a new project quickly because things are organized in a way we recognize.*

Testimonials
------------

> **“Nice! That README alone is already gold!”**
> — Mr Huy Dinh Q.

> **“Awesome. Simply awesome.”**
> — Mr Tien Le P.

> **“I'm using it for a year now and many projects, it's an awesome boilerplate and the project is well maintained!”**
> — Mr Dai Ho V.

<h4 align="center">Project Structure</h4>

![](https://lh6.googleusercontent.com/-KQTmCFNK6MM/U7OZpznjDuI/AAAAAAAAERc/h3jR27Uy1lE/w1366-h1006-no/Screenshot+2014-07-02+01.32.22.png)

Table of Contents
-----------------

- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Obtaining the Defines](#obtaining-the-defines)
- [List of Frameworks](#list-of-frameworks)
- [Useful Tools and Resources](#useful-tools-and-resources)
- [FAQ](#faq)
- [How It Works](#how-it-works-mini-guides)
- [Beta Deployment](#beta-deployment)<!--- - [Changelog](#changelog) -->
- [License](#license)

## Prerequisites

- [MacOS Sierra (10.12.x)](https://www.apple.com/lae/macos/sierra/)
- [Xcode 8.3.x](https://developer.apple.com/download/)
- [CocoaPods 1.2.x](https://cocoapods.org/#install)

**Note:** If you are new to Node or Express, I recommend to watch
[Node.js and Express 101](https://www.youtube.com/watch?v=BN0JlMZCtNU)
screencast by Alex Ford that teaches Node and Express from scratch. Alternatively,
here is another great tutorial for complete beginners - [Getting Started With Node.js, Express, MongoDB](http://cwbuecheler.com/web/tutorials/2013/node-express-mongo/).

## Project Structure

| Name                               | Description                                                  |
| ---------------------------------- | ------------------------------------------------------------ |
| **Define**/passport.js             | Passport Local and OAuth strategies, plus login middleware.  |

**Note:** There is no preference how you name or structure your views.
You could place all your templates in a top-level `views` directory without
having a nested folder structure, if that makes things easier for you.
Just don't forget to update `extends ../layout`  and corresponding
`res.render()` paths in controllers.

## Getting Started

The easiest way to get started is to clone the repository:

```bash
# Get the latest snapshot
git clone --depth=1 https://github.com/sahat/hackathon-starter.git myproject

# Change directory
cd myproject

# Install NPM dependencies
npm install

# Or, if you prefer to use `yarn` instead of `npm`
yarn install

# Then simply start your app
node app.js
```

**Note:** I highly recommend installing [Nodemon](https://github.com/remy/nodemon).
It watches for any changes in your  node.js app and automatically restarts the
server. Once installed, instead of `node app.js` use `nodemon app.js`. It will
save you a lot of time in the long run, because you won't need to manually
restart the server each time you make a small change in code. To install, run
`sudo npm install -g nodemon`.

## Obtaining the Defines

To use any of the included APIs or OAuth authentication methods, you will need to obtain appropriate credentials: Client ID, Client Secret, API Key, or
Username & Password. You will need to go through each provider to generate new credentials.

> I have included dummy keys for all API examples to get you up and running even faster. But don't forget to update
them with *your credentials* when you are ready to deploy an app.

## List of Frameworks

| Framework | Description |
| ------------------------------- | --------------------------------------------------------------------- |
| MVVM-Swift | MVVM Architect for iOS Application. |
| SVProgressHUD | A clean and lightweight progress HUD for your iOS and tvOS app. |
| IQKeyboardManagerSwift | Codeless drop-in universal library allows to prevent issues of keyboard sliding up and cover UITextField/UITextView. Neither need to write any code nor any setup required and much more. |
| LGSideMenuController | iOS view controller, shows left and right views by pressing button or gesture. |
| RealmS | Realm + ObjectMapper. |
| ObjectMapper | Simple JSON Object mapping written in Swift. Please fix this version to 2.2.6 now. |
| SwiftyJSON | The better way to deal with JSON data in Swift. |
| Alamofire | Elegant HTTP Networking in Swift. |
| AlamofireNetworkActivityIndicator | Controls the visibility of the network activity indicator on iOS using Alamofire. |
| SwiftDate | The best way to manage Dates and Timezones in Swift. |
| SAMKeychain | Simple Objective-C wrapper for the keychain that works on Mac and iOS. |
| KeychainAccess | ESimple Swift wrapper for Keychain that works on iOS, watchOS, tvOS and macOS. |
| SwiftLint | A tool to enforce Swift style and conventions. |
| AsyncSwift | Syntactic sugar in Swift for asynchronous dispatches in Grand Central Dispatch. |
| SwiftUtils | Swift shorthand. |
| SwiftyUserDefaults | Modern Swift API for NSUserDefaults. |
| DeviceKit | DeviceKit is a value-type replacement of UIDevice. |
| Fabric/Crashlytics | Crash reporting & beta deployment. |

## Useful Tools and Resources

- [CocoaPods](https://cocoapods.org/) - CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects. It has over 33 thousand libraries and is used in over 2.2 million apps. CocoaPods can help you scale your projects elegantly.
- [fastlane](https://docs.fastlane.tools/) - The easiest way to automate building and releasing your iOS and Android apps.
- [Swimat](https://github.com/Jintin/Swimat) - An Xcode formatter plug-in to format your Swift code.
- [SwiftLint](https://github.com/realm/SwiftLint) - A tool to enforce Swift style and conventions.
- [Ray Wenderlich](https://www.raywenderlich.com/) - The largest collection of Swift & iOS video tutorials anywhere.
- [design+code](https://designcode.io/iosdesign-guidelines) - iOS 10 Design Guidelines for iPhone and iPad.

## FAQ

### Question?
Answer.

## How It Works (mini guides)

This section is intended for giving you a detailed explanation about
how a particular functionality works. Maybe you are just curious about how it works, or maybe you are lost and confused while reading the code, I hope it provides some guidance to you.

### Todo

## Beta Deployment

- [Fabric](https://docs.fabric.io/apple/fabric/overview.html)
- [TestFlight](https://help.apple.com/itunes-connect/developer/#/devdc42b26b8)
- [DeployGate](https://deploygate.com/docs/ios_sdk?locale=en)

<!--
## Changelog

### 1.0.0 (June 20, 2017)
The first version.
-->

## Contributing

If something is unclear, confusing, or needs to be refactored, please let me know. Pull requests are always welcome, but due to the opinionated nature of this project, I cannot accept every pull request. Please open an issue before submitting a pull request. This project uses [RayWenderlich Swift Style Guide](https://github.com/raywenderlich/swift-style-guide) with a
few minor exceptions. If you are submitting a pull request that involves Pug templates, please make sure you are using *spaces*, not tabs.

## License

The MIT License (MIT)

Copyright (c) 2017 Asian Tech Co., Ltd.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
