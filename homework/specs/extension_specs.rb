require("minitest/autorun")
require("minitest/rg")
require_relative("../extension")

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

    @books = [@book1, @book2, @book3]

    @library = Library.new(@books)

  end

  def test_get_books()
    result = @library.books()
    assert_equal(3, result.length())
  end

  def test_book_info()
    result = @library.book_info("The Hobbit")
    assert_equal(@book3, result)
  end

  def test_get_rental_details()
    result = @library.rental_details("Harry Potter")
    assert_equal(@book2[:rental_details], result)
  end

  def test_add_book()
    @library.add_book("Animal Farm")
    assert_equal(4, @library.books().length())
  end

  def test_change_rental_details()
  @library.change_rental_details("Harry Potter", "Fiona", "14/09/18")
  new_info = @library.book_info("Harry Potter")[:rental_details]
  assert_equal("Fiona", new_info[:student_name])
  assert_equal("14/09/18", new_info[:date])
  end

end
