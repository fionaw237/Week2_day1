class Team

  attr_reader :name
  attr_accessor :players, :coach, :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0    
  end

  # def name()
  #   return @name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def change_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @players << new_player
  end

  def find_player(name)
    @players.include?(name)
  end

  def change_points(result)
    if result == "win"
      @points += 3
    end
  end

end
