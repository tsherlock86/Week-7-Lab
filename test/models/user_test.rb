require 'test_helper'
require 'rspec/rails'
require 'shoulda/matchers'

class UserTest < ActiveSupport::TestCase

  should have_many(:pins)


end
