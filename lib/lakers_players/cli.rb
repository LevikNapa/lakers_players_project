class CLI

  def start
    puts "Welcome to Lakers players!".red
    menu
  end

  def menu
    puts "\nPlease type 'enter' to see a list of the lakers players".yellow
    input = gets.strip
    case input
      when "enter"
    Scraper.new.page_scraper
    list_players
    choose_player
      when "exit"
    puts "Goodbye!"
      else
    puts "Sorry! I didn't understand that input"
    menu
   end
  end

  def list_players
    Player.all.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player.player_name}".blue
    end
  end

  def choose_player
    puts "\nType a players number to see more info on him:".yellow
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
      puts "Here's some info on #{player_selection.player_name}:\n".yellow
      player_selection.player_info.each do |info|
      puts "#{player_selection.birthday}.".green
      puts "#{player_selection.drafted}.".green
    end
   second_menu
  end

  def second_menu
    puts "\nWould you like to look at another player? Type 'player'".yellow
    puts "Would you like to go to the start? Type 'start'".yellow
    puts "Would you like to exit? Type 'exit'".yellow
    input = gets.strip
    if input == "player"
      list_players
      choose_player
    elsif input == "start"
      menu
    elsif input == "exit"
      puts "Goodbye!".red
    else
      puts "Sorry I didn't understand that input".red
      second_menu
    end
  end


end
