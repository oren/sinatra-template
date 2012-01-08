class MyApp < Sinatra::Base
  before do
    @flash = session.delete(:flash)
  end

  get '/' do
    erb :index
  end

  get '/test-flash' do
    session[:flash] = 'This is a flash'
    redirect to('/')
    erb :index
  end

end
