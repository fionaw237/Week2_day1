require("Minitest/autorun")
require("minitest/rg")
require_relative("../part_B")

class TestTeam < MiniTest::Test

  def setup
    @team1 = Team.new("Dundee City 1", ["Fiona Wilson", "Jayne Digby", "Laura-Anne Johnston", "Tasha Ross"], "Mandy Doogan")
    @team2 = Team.new("Dundee City 2", ["Lou Smith", "Amanda Primrose", "Paige Dolan", "Niamh Ireland"], "Lynsay McKinlay")
  end

  def test_get_team_name()
    result = @team1.name()
    assert_equal("Dundee City 1", result)
  end

end
