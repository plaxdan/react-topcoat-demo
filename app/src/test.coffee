chai = require 'chai'
sinonChai = require 'sinon-chai'

# enable 'should' assertion syntax
# TODO: configure this in gulpfile
expect = chai.expect
chai.use sinonChai
chai.should()

# TODO: do this dynamically
require './util/add_spec'
