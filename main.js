(function() {
	'use strict';

	var nativity = require('nativity'),
								 cint('cint');

	module.exports = {
		install: function() {
			nativity.install(String.prototype, cint, ['supplant', 'startsWith', 'before', 'after', 'between', 'bookend', { repeatString: 'repeat' }, 'toTitleCase', 'index' ]);
			nativity.install(Number.prototype, cint, ['ordinal', { mapNumber: 'map' }]);
			nativity.install(Array.prototype, cint, ['group', 'orderedGroup', 'tally', 'unique', 'reversed', 'index', 'rotate', 'toObject', 'findByProperty', 'filterBy', 'spliced', 'shuffle', 'chunk' ]);
			nativity.install(Function.prototype, cint, ['partialAt', 'arritize', 'new', 'spy']);
		}
	};

})();
