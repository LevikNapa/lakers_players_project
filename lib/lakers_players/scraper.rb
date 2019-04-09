class Scraper
  def page_scraper

    html = open("https://www.nba.com/lakers/roster/player-pages")
    doc = Nokogiri::HTML(html)
    doc.css("div.col-xs-12.col-sm-6.roster").each do |player|
      player_name = player.css("h3.nameplate").text
      new_player = Player.new(player_name)
      new_player.links= player.css("a").attr("href").value


    end
  end

  def self.info_scraper(player_selection)

    html = open(player_selection.links)
    webpage = Nokogiri::HTML(html)
    # binding.pry



  end

end
