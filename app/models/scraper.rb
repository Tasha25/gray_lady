class Scraper

  def initialize(url)
    @url = url
  end

  def get_hrefs
    response = HTTParty.get("http://nytimes.com")
    doc = Nokogiri::HTML(response)
  end
end