class Person

  attr_reader :age, :tv_show, :monies, :friends, :fav_foods
  attr_accessor :name

  def initialize(name, age, monies, friends, tv_show, fav_foods)
    @name = name
    @age = age
    @monies = monies
    @friends = friends
    @tv_show = tv_show
    @fav_foods = fav_foods
  end

  def likes_food(food)
    return @fav_foods.include?(food)
  end

  def add_friend(new_friend)
    @friends << new_friend
  end

end
