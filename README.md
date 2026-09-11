# macOS Haptics

[![Build Status](https://github.com/eliottvincent/macos-haptics/actions/workflows/action.yml/badge.svg)](https://github.com/eliottvincent/macos-haptics/actions) [![Version](https://img.shields.io/npm/v/macos-haptics.svg)](https://www.npmjs.com/package/macos-haptics) [![Downloads](https://img.shields.io/npm/dt/macos-haptics.svg)](https://www.npmjs.com/package/macos-haptics)

Native macOS trackpad haptic feedback for Node.js.

The package ships a prebuilt universal binary for Apple Silicon and Intel Macs.

## Installation

```sh
npm install macos-haptics
```

For applications that also run outside macOS, install it as an optional dependency:

```sh
npm install --save-optional macos-haptics
```

## Usage

```js
const haptics = require("macos-haptics");

haptics.performAlignment();
```

Feedback is produced by the current input device when supported by macOS and the
user's hardware and settings.

## API

### `performAlignment()`

Performs the standard macOS alignment feedback pattern at the system-selected
time.

## License

macos-haptics is released under the MIT License. See the bundled LICENSE file
for details.
