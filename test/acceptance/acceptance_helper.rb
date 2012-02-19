require_relative '../test_helper.rb'
require_relative '../../app.rb'

# include this in every describe block
module AcceptanceHelper
  require "minitest/autorun" # for describe and it methods
  require 'capybara-webkit' # for using the webkit driver - it's fast and support js
  require 'capybara/dsl' # for Capybara
  include Capybara::DSL # for visit method

  Capybara.app = MyApp
  Capybara.javascript_driver = :webkit
end



