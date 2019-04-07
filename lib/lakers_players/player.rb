class Player
attr_accessor :player_name

@@all

 def initialize(player_name)
  @player_name = player_name
  @@all << self
 end

 def self.all
  @@all
 end

end
