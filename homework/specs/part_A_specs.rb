require("minitest/autorun")
require("minitest/rg")
require_relative("../part_A")

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Fiona Wilson", "G7")
    @student2 = Student.new("A Name", "G3")
    @student3 = Student.new("Some Person", "E20")

    @students = [@student1, @student2, @student3]
  end

  def test_getting_name()
    result = @student1.name()
    assert_equal("Fiona Wilson", result)
  end

end
