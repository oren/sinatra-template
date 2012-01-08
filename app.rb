require 'sinatra/base'
require_relative 'routes/init'
require_relative 'helpers/init'
require_relative 'models/init'

class MyApp < Sinatra::Base
  enable :method_override
  enable :sessions
  set :session_secret, 'super secret'

  configure do
    set :app_file, __FILE__
  end

  configure :development do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :qa do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :production do
    set :raise_errors, false #false will show nicer error page
    set :show_exceptions, false #true will ignore raise_errors and display backtrace in browser
  end
end
