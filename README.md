# nativity-fomatto
[nativity](https://github.com/metaraine/fomatto) plugin to install [fomatto](https://github.com/BonsaiDen/Fomatto)'s format method onto String.prototype.

## Install

	npm install --save nativity-fomatto

## Usage

	require('nativity-fomatto').install();

	console.log('Hello {0}!'.format(['Friend']));
	// Hello Friend!

Custom formatter:

	require('nativity-fomatto').install({
		price: function(value) {
			return '$' + value + '.00';
		}
	});

	console.log('That will be {:price}'.format(5));
	// That will be $5.00

### Restoration

	var fomatto = require('nativity-fomatto').install();
	console.log('Hello {0}!'.format(['Friend']));

	fomatto.restore();

	console.log('My string'.format);
	// format is undefined
