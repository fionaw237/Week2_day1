class Library

  attr_reader :books

  def initialize()
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def find_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def get_rental_details(title)
    book = find_by_title(title)
    return book[:rental_details]
  end

  def add_book_by_title(name_of_book)
    book = {
      title: name_of_book,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books << book
  end

  def change_rental_details(name_of_book, student_name, date)
    book = find_by_title(name_of_book)
    book[:rental_details][:student_name] = student_name
    book[:rental_details][:date] = date
  end

end
