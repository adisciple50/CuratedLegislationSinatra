require 'httparty'
class LegislationSearchController
  include HTTParty
  base_uri 'www.legislation.gov.uk'

  def initialize(title = nil, type = nil, year = nil, version = nil,start_year='*',end_year='*',start_number='*',end_number='*')
    @title = URI.encode_www_form_component(title)
    @type = URI.encode_www_form_component(type)
    @year = URI.encode_www_form_component(year)
    @version = URI.encode_www_form_component(version)
    @start_year= URI.encode_www_form_component(start_year)
    @end_year= URI.encode_www_form_component(end_year)
    @start_number= URI.encode_www_form_component(start_number)
    @end_number= URI.encode_www_form_component(end_number)
  end
  def full_search
    self.class.get('/search',{query:{
      title:@title,
      type:@type,
      "start-year"=> @start_year,
      "end-year" => @end_year,
      "start-number"=>@start_number,
      "end-number" => @end_number,
      version:@version}})
  end
  def year_search
    self.class.get "/search/#{@title}/#{@year}"
  end
  def this_year
    @title = 'all'
    @year = Date.today.strftime('%Y')
    year_search
  end
end