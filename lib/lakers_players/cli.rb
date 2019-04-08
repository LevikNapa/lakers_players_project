class CLI
  def start
    puts "Welcome to Lakers players!"
    menu
  end

  def menu
    puts "Please hit 'enter' to see a list of the lakers players"
    input = gets.strip
    if input == "enter"
    Scraper.new.page_scraper
    menu
    puts "Type a players number to see more info on him"
    input = gets.strip.downcase
    end
  end

  end
  def list_players
    Player.all.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player.player_name}"
    end
  end

end
