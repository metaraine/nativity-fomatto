# nativity-cint
[nativity](https://github.com/metaraine/cint) plugin to safely install [cint](https://github.com/metaraine/cint) methods onto native Array, String, Number, and Function prototypes.

## Install

    npm install --save nativity-cint

## Usage

    require('nativity-cint').install();

    // now use cint methods on native object prototypes
    console.log('Hello {0}!'.supplant(['Friend']));