require 'spec_helper'

describe Scraper do

  describe ".new" do
    it "initializes with a url" do
      expect( Scraper.new(r) ).to be
      expect{ Scraper.new("http://nytimes.com") }.to_not raise_error
    end

    it "raises an error without a url" do
      expect{ Scraper.new }.to raise_error(ArgumentError)
    end # this is an inner describe block in the Scraper
  end

  describe "get_hrefs" do
  it "should get links on page" do
    scraper_info = Scraper.new
    expect( scraper_info.get_hrefs ).to include('http' )
    end
  end

end

