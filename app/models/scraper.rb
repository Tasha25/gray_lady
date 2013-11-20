class Scraper

  def initialize(url)
    @url = url
    response = HTTParty.get("http://www.hiddengemsarchery.com")
    @doc = Nokogiri::HTML(response)
  end


  def get_hrefs
    @doc.css('a').map do |link|
      link.get_attribute('href')
    end
  end

  def get_images
    @doc.css('img').map { |link| link.get_attribute('src')}
  end

end