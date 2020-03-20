require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @converted_text = params[:user_text]
    erb :piglatinize
  end


end
