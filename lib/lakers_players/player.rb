class Player
attr_accessor :player_name, :links, :birthday, :drafted, :position
attr_reader :player_info

@@all = []

 def initialize(player_name)
  @player_name = player_name
  @player_info = []
  @birthday = [] 



  @@all << self

 end

 def self.all
  @@all
end

end
