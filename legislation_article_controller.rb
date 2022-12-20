require 'httparty'
class LegislationArticleController
  include HTTParty
  base_uri 'www.legislation.gov.uk'
  def initialize(title=nil,type=nil,year=nil,number=nil)
    @title=title
    @type=type
    @year=year
    @number=number
    @options = {query:{title:@title,number:@number,type:@type,year:@year}}
    @options.delete_if(){|k,v| v.nil?}
  end
  def get
    self.class.get('/id',@options)
  end
end