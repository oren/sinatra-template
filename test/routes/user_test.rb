require_relative '../../app'
require_relative '../test_helper'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    MyApp.new
  end

  def test_root
    get '/'
    assert_equal true, last_response.body.include?('Sinatra template')
  end
end
