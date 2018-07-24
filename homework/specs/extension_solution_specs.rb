require("minitest/autorun")
require("minitest/rg")
require_relative("../extension_solution")

class TestLibrary < MiniTest::Test

  def setup

    @book1 = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
      }
    }

    @book2 = {
      title: "Harry Potter",
      rental_details: {
        student_name: "Louise",
        date: "11/11/18"
      }
    }

    @book3 = {
      title: "The Hobbit",
      rental_details: {
        student_name: "Paula",
        date: "07/08/18"
      }
    }

    @library = Library.new()
    @library.add_book(@book1)

  end

  def test_add_book()
    @library.add_book(@book2)
    result = @library.books
    assert_equal(2, result.size())
  end

  def test_get_book_by_title()
    result = @library.find_by_title("lord_of_the_rings")
    assert_equal(@book1, result)
  end

   def test_get_rental_details_by_title()
    result = @library.get_rental_details("lord_of_the_rings")
    assert_equal(@book1[:rental_details], result)
   end

  def test_add_book_without_rental_details()
    @library.add_book_by_title("The Hobbit")
    expected_book = {
      title: "The Hobbit",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    actual_book = @library.find_by_title("The Hobbit")

    assert_equal(expected_book, actual_book)
  end

  def test_change_rental_details()
    @library.change_rental_details("lord_of_the_rings", "Bob", "25/12/18")

    result = @library.find_by_title("lord_of_the_rings")
    expected_book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Bob",
        date: "25/12/18"
      }
    }

    assert_equal(expected_book, result)
  end


end
