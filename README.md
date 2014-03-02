React Topcoat
===
This repository is a sandbox for the creation of [Topcoat](topcoat.io) components with the [React](facebook.github.io/react/) library.

Currently the project builds to a simple app containing each of the Topcoat components. The intention is to package the lib to npm and then have this repo contain a basic sample app using the lib.

This repo is also being used to experiment with various ways of packaging a webapp with including as:

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
- `gulp run:web` runs the web/test server on port 3000
- `gulp run:ios` `[--emulator]` runs the ios app
- `gulp run:android` `[--emulator]` runs the android

### Running the Chrome App
To run the chrome app go to chrome://extensions and either:

- drag `dist/chrome/react-topcoat.crx` to the window
- or load `build/chrome` as an unpacked extension
