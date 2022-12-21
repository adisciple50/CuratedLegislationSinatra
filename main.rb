require 'sinatra'

class CuratedLegislation < Sinatra::Base
  get '/' do
    erb :index
  end
  get '/assets/application.js' do
    send_file('app/assets/application.js')
  end
  get /^\/id\/(ukpga|ukla|ukppa|gbla|apgb|gbppa|aep|aosp|asp|aip|apni|mnia|nia|ukcm|mwa|anaw|asc|uksi|ssi|wsi|nisr|ukci|nisi|ukmo|nisro|ukdsi|sdsi|nidsr|nidsi|wdsi)\/\d+\/\d+\/\d+$/ do

  end
end