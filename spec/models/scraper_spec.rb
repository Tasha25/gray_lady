require 'spec_helper'

describe Scraper do

  describe ".new" do
    it "initializes with a url" do
      expect( Scraper.new("http://www.hiddengemsarchery.com") ).to be
      expect{ Scraper.new("http://www.hiddengemsarchery.com") }.to_not raise_error
    end

    it "raises an error without a url" do
      expect{ Scraper.new }.to raise_error(ArgumentError)
    end # this is an inner describe block in the Scraper
  end

   before(:each) { @scraper = Scraper.new("http://www.hiddengemsarchery.com")}

 describe "#get_hrefs" do
    it "returns an array" do
      expect(@scraper.get_hrefs).to be_instance_of Array
    end
    it "contains links from the page" do
      test_link = "http://www.hiddengemsarchery.com/"
      expect(@scraper.get_hrefs).to include(test_link)
    end
    it "doesn't contain links not on the page" do
      test_link = "http://www.hiddengemsarchery.com"
      expect(@scraper.get_hrefs).to_not include(test_link)
    end
  end

  describe "#get_images" do
    it "returns an array" do
      expect(@scraper.get_images).to be_instance_of Array
    end
    it "contains images from the page" do
      test_img = "http://www.hiddengemsarchery.com/wp-content/uploads/2013/02/cropped-Screen-Shot-2013-02-12-at-11.45.43-AM-e1360885247611.png"
      expect(@scraper.get_images).to include(test_img)
    end
    it "doesn't contain images not on the page" do
      test_img = "amoney_anime.png"
      expect(@scraper.get_images).to_not include(test_img)
    end
  end

end

