React Topcoat Demo
===
This repository is a sandbox for the [react-topcoat](https://github.com/plaxdan/react-topcoat) library.

The project builds to a simple app containing each of the Topcoat components. This repo is also being used to experiment with various ways of packaging a webapp with including:

- Standard webapp
- [Chrome app](https://developer.chrome.com/apps/about_apps)
- Android app
- iOS app

It is built with the following technologies:

- App: [ReactJS](facebook.github.io/react/) / [Topcoat](topcoat.io) / [SASS](sass-lang.com)
- Tests: [Mocha](visionmedia.github.io/mocha/) / [Chai](chaijs.com) / [SinonJS](http://sinonjs.org/)
- Build: [GulpJS](gulpjs.com) / [Bower](bower.io) / [Browserify](browserify.org) / [Cordova](cordova.apache.org) / [MobileChromeApps](https://github.com/MobileChromeApps/mobile-chrome-apps)
 - Note: Will likely be taking a look at alternatives to Browserify such as [Webpack](webpack.github.io)

### Build

The project builds to:

- `build/js` unminified js
- `build/web` standard webapp
- `build/test` mocha tests in the browser
- `build/chrome` chrome app
- `cordova/www` is symlinked to `build/chrome`

Build tasks:

- `gulp clean` deletes `./build` and `./cordova/platforms`
- `gulp` builds everything
- `gulp build:web` creates `./build/js`, `./build/web`, and `./build/test`
- `gulp build:chrome` creates a chrome app in `./build/chrome`
- `gulp build:cordova` creates platforms (if not exists) and performs cordova perpare

Dist tasks:

- `gulp dist:web` package webapp into `./dist/web`
- `gulp dist:chrome` `[--chrome=<path to chrome>]` package chrome `.crx` file into `./dist/chrome`
- `gulp dist:android` package `.apk` into `./dist/android` __TODO:__ sign the apk
- __(TODO)__ `gulp dist:ios` package ios file into `./dist/ios`

Run tasks:

- `gulp run:test` runs mocha tests in console
- `gulp run:web` runs the app at [`http://localhost:3000`](http://localhost:3000) and the mocha test server at [`http://localhost:3000/test.html`](http://localhost:3000/test.html)
- `gulp run:android` `[--emulator]` runs the android
- `gulp run:ios` `[--emulator]` runs the ios app

### Running as a Web App

Run: `gulp run:web`

![Imgur](http://i.imgur.com/KYnylBn.png)

### Running as a Chrome App

Run `gulp dist` then go to [`chrome://extensions`](chrome://extensions) and either:

- drag `dist/chrome/react-topcoat.crx` to the window
- or load `build/chrome` as an unpacked extension

![Imgur](http://i.imgur.com/NxxFO1k.png)

### Running in the iOS Emulator

Run: `gulp run:ios --emulator` (omit --emulator if you have a device connected)

![Imgur](http://i.imgur.com/8SMZKoc.png)

### Running in the Android Emulator

Run: `gulp run:android --emulator` (omit --emulator if you have a device connected)

![Imgur](http://i.imgur.com/h1koQV0.png)
