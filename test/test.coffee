should = require('chai').should()
nativityFomatto = require('../index.js')

describe 'nativity-fomatto', ->

	afterEach ->
		nativityFomatto.restore()

	it 'should exist', ->
		nativityFomatto.should.have.property 'install'
		nativityFomatto.install.should.be.a 'function'

	it 'assumes that format does not already exist on String.prototype', ->
		String::should.not.have.property 'format'

	it 'should install the "format" function on String.prototype', ->
		nativityFomatto.install()

		String::should.have.property 'format'
		''.format.should.be.a 'function'
		'Hello {0}! How are {1}?'.format(['Maam','you'])
			.should.equal 'Hello Maam! How are you?'

	it 'should pass formatters along to the Formatter factory', ->
		formatter = unicorns: (value) ->
			value + ' unicorns!'

		nativityFomatto.install formatter

		String::should.have.property 'format'
		''.format.should.be.a 'function'
		'Here come the {:unicorns}'.format('five')
			.should.equal 'Here come the five unicorns!'

	describe 'return object', ->

		installation = nativityFomatto.install()

		it 'should exist', ->
			should.exist installation

		it 'should have .overwritten=0', ->
			installation.should.have.property 'overwritten', 0

		it 'should have .prev={}', ->
			installation.should.have.property 'prev'
			installation.prev.should.be.empty

		it 'should have .new equal to an object with one property, format', ->
			installation.should.have.property 'new'
			installation.new.should.have.property 'format'
			installation.new.format.should.be.a 'function'

		it 'should restore String.prototype to its original form', ->
			installation.restore()

			String::should.not.have.property 'format'
