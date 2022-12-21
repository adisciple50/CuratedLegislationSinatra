require 'sinatra'


class CuratedLegislation < Sinatra::Base
  get '/' do
    erb :index
  end
  get /\/id\/(ukpga|ukla|ukppa|gbla|apgb|gbppa|aep|aosp|asp|aip|apni|mnia|nia|ukcm|mwa|anaw|asc|uksi|ssi|wsi|nisr|ukci|nisi|ukmo|nisro|ukdsi|sdsi|nidsr|nidsi|wdsi)\/\d+\/\d+\/\d+/ do
    erb :article, locals: {path: request["PATH_INFO"]}
  end
  get /\/(ukpga|ukla|ukppa|gbla|apgb|gbppa|aep|aosp|asp|aip|apni|mnia|nia|ukcm|mwa|anaw|asc|uksi|ssi|wsi|nisr|ukci|nisi|ukmo|nisro|ukdsi|sdsi|nidsr|nidsi|wdsi)\/.*/ do
    erb :browser,locals: {path: request["PATH_INFO"]}
  end
  get /\/browse\/.*/ do
    erb :browser,locals: {path: request["PATH_INFO"]}
  end

end