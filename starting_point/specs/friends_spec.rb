require( 'minitest/autorun' )
require("minitest/rg")
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = Person.new("Shaggy", 12, 1, ["Velma","Fred","Daphne", "Scooby"], "Friends", ["charcuterie"])
    @person2 = Person.new("Velma", 15, 2, ["Fred"], "Baywatch", ["Soup", "Bread"])
    @person3 = Person.new("Scooby",18, 20,["Shaggy", "Velma"],"Pokemon",["Scooby snacks"])

    @people = [@person1, @person2, @person3]

  end

  # 1. For a given person, return their name
  def test_getting_name()
    result = @person3.name()
    assert_equal("Scooby", result)
  end

  def test_change_name()
    @person1.name = "Fred"
    assert_equal("Fred", @person1.name())
  end

  # 2. For a given person, return their favourite tv show
  # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")
  def test_fav_tv_show()
    result = @person3.tv_show()
    assert_equal("Pokemon", result)
  end


  # 3. For a given person, check if they like a particular food
  # (e.g. the function likes_to_eat(@person2, "bread") should return true, likes_to_eat(@person3, "spinach") should return false)
  def test_likes_food_true()
    result = @person2.likes_food("Soup")
    assert_equal(true, result)
  end

  # 4. For a given person, add a new name to their list of friends
  # (e.g. the function add_friend(@person2, "Scrappy-Doo") should add Scrappy-Doo to the friends.)
  # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)


  # 5. For a given person, remove a specific name from their list of friends
  # (hint: Same as above, testing for the length of the array should be sufficient)


  # 6. Find the total of everyone's money
  # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)


  # 7. For two given people, allow the first person to loan a given value of money to the other
  # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)


  # 8. Find the set of everyone's favourite food joined together
  # (hint: concatenate the favourites/snack arrays together)


  # 9. Find people with no friends
  # (hint: return an array, there might be more people in the future with no friends!)

end
