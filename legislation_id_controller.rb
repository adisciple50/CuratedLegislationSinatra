require 'httparty'
class LegislationIdController
  include HTTParty
  base_uri 'www.legislation.gov.uk'
  def initialize(title=nil,type=nil,year=nil,number=nil,section=nil)
    @title=URI.encode_www_form_component(title)
    @type=URI.encode_www_form_component(type)
    @year=URI.encode_www_form_component(year)
    @number=URI.encode_www_form_component(number)
    @section=URI.encode_www_form_component(section)
    @options = {query:{title:@title,number:@number,type:@type,year:@year}}
    @options.delete_if(){|k,v| v.nil?}
  end
  def search
    self.class.get('/id',@options)
  end
  def get_article
    self.class.get("/id/#{type}/#{@year}/#{@number}/#{@section}")
  end

end