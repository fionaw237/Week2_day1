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

  def test_getting_cohort()
    result = @student3.cohort()
    assert_equal("E20", result)
  end

  def test_changing_name()
    @student2.change_name("John Smith")
    assert_equal("John Smith", @student2.name())
  end

  def test_changing_cohort()
    @student1.change_cohort("G8")
    assert_equal("G8", @student1.cohort())
  end

end
