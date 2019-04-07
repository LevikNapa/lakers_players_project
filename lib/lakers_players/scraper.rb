class Scraper
  def page_scraper
    # html = open("https://www.nba.com/lakers/roster?ls=nav_extended_team")
    # html = open("https://en.wikipedia.org/wiki/Template:Los_Angeles_Lakers_roster")
    html = open("https://www.nba.com/lakers/roster/player-pages")
    doc = Nokogiri::HTML(html)
       # binding.pry
    doc.css("div.col-xs-12.col-sm-6.roster").each do |player|

      player_name = player.css("h3.nameplate").text
      Player.new(player_name)

    end

  end

end
