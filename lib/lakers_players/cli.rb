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
    choose_player
    end
  end

  def list_players
    Player.all.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player.player_name}"
    end
  end

  def choose_player
    puts "\nType a players number to see more info on him:"
    input = gets.strip.to_i
    if input.between?(1,17)
      player_selection = Player.all[input-1]
      display_info(player_selection)

    else
      "\nPlease enter a valid input"
      choose_player
    end
  end

  def display_info(player_selection)
    Scraper.info_scraper(player_selection)
    # puts "Here's some info on #{player_name}:\n"
    player_selection.player_info.each.with_index(1) do |info, idx|
      puts "#{idx}. #{player_selection.birthday}. #{player_selection.drafted}"
    end
   second_menu
  end

  def second_menu
    puts "Would you like to look at another player? Type 'P'"
    puts "Would you like to go to the start? Type 'S'"
    puts "Would you like to exit? Type 'Exit'"
    input = gets.strip.upcase
    if input == "P"
      list_players
      choose_player
    elsif input == "S"
      menu
    elsif input == "Exit"
      puts "Goodbye!"
    else
      puts "Sorry I don't understand"
      second_menu
    end
  end


end
