require 'httparty'
class LegislationSearchController
  include HTTParty
  base_uri 'www.legislation.gov.uk'

  def initialize(title = nil, type = nil, year = nil, version = nil,start_year='*',end_year='*',start_number='*',end_number='*')
    @title = title
    @type = type
    @year = year
    @version = version
    @start_year= start_year
    @end_year= end_year
    @start_number= start_number
    @end_number= end_number
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
end