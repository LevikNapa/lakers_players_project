class CLI
  def start
    puts "Welcome to Lakers players!"
    menu
  end

  def menu
    puts "\nPlease type 'enter' to see a list of the lakers players"
    input = gets.strip
    if input == "enter"
    Scraper.new.page_scraper
    list_players
    select_player
    end
  end

  def list_players
    Player.all.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player.player_name}"
    end
  end

  def select_player
    puts "\nType a players number to see more info on him:"
    input = gets.strip.to_i
    if input.between?(1,17)
      number = Player.all[input-1]
      display_player_info(number)
  end

end
