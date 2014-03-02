
add = require './add'
module.exports = it 'should add two numbers', ->
  (add 1, 2).should.equal 3
