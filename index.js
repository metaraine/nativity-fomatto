(function() {
	'use strict';

	var nativity = require('nativity'),
			fomatto =	 require('fomatto');

	var installation;

	module.exports = {
		install: function(formats) {
			var format = fomatto.Formatter(formats);
			return installation = nativity.installOne(String.prototype, format, 'format');
		},
		restore: function() {
			installation.restore();
		},
		installation: installation
	};

})();
