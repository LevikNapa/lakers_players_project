class CLI
  def start

    puts "Welcome to Lakers players!"
    Scraper.new.page_scraper
    menu
  end

  def menu
   Player.all.each.with_index(1) do |player, idx|
     puts "#{idx}. #{player.player_name}"
   end

  end

end
