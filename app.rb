require 'sinatra/base'
require_relative 'routes/init'
require_relative 'helpers/init'
require_relative 'models/init'

class MyApp < Sinatra::Base
  set :root, File.expand_path('../', __FILE__)

  configure :development do
  end

  configure :qa do
  end

  configure :production do
  end

end

