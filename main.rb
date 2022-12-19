require 'sinatra'

class CuratedLegislation < Sinatra::Base
  get '/' do
    erb :index
  end
  get '/assets/application.js' do
    send_file('app/assets/application.js')
  end
end