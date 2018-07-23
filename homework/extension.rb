class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def book_info(title)
    @books.each do |book|
      return book if book[:title] == title
    end
    return nil
  end

  def rental_details(title)
    return book_info(title)[:rental_details]
  end

  def add_book(new_title)
    if book_info(new_title) == nil
      new_book = {
        title: new_title,
        rental_details: {
          student_name: "",
          date: ""
        }
      }
      @books << new_book
    end
  end

  def change_rental_details(title, student, due_date)
    book = book_info(title)
    book[:rental_details][:student_name] = student
    book[:rental_details][:date] = due_date
  end

end
