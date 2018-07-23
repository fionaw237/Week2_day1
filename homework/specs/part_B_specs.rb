require("Minitest/autorun")
require("minitest/rg")
require_relative("../part_B")

class TestTeam < MiniTest::Test

  def setup
    @team1 = Team.new("Dundee City 1", ["Fiona Wilson", "Jayne Digby", "Laura-Anne Johnston", "Tasha Ross"], "Mandy Doogan", 0)
    @team2 = Team.new("Dundee City 2", ["Lou Smith", "Amanda Primrose", "Paige Dolan", "Niamh Ireland"], "Lynsay McKinlay", 0)
  end

  def test_get_team_name()
    result = @team1.name()
    assert_equal("Dundee City 1", result)
  end

  def test_get_players()
    result = @team2.players()
    assert_equal(4, result.length())
  end

  def test_get_coach()
    result = @team1.coach()
    assert_equal("Mandy Doogan", result)
  end

  def test_change_coach()
    @team2.coach = "Pauline Harley"
    assert_equal("Pauline Harley", @team2.coach())
  end

  def test_add_player()
    @team2.add_player("Sonia Talosa")
    assert_equal(5, @team2.players.length())
  end

  def test_find_player_true()
    result = @team1.find_player("Tasha Ross")
    assert_equal(true, result)
  end

  def test_find_player_false()
    result = @team1.find_player("Liusaidh Mathieson")
    assert_equal(false, result)
  end

  def test_get_points()
    result = @team1.points()
    assert_equal(0, result)
  end

  def test_add_points_win()
    @team1.change_points("win")
    assert_equal(3, @team1.points)
  end

  def test_add_points_lose()
    @team1.change_points("lose")
    assert_equal(0, @team1.points)
  end

end
