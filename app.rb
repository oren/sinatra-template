require 'sinatra'
require_relative 'routes/init'
require_relative 'helpers/init'
require_relative 'models/init'

class MyApp < Sinatra::Base
  configure :development do
  end

  configure :qa do
  end

  configure :production do
  end

end

