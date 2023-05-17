# Represents a rental of a book by a person on a specific date
class Rental
  attr_accessor :date
  attr_reader :person, :book

  # Initializes a new instance of the Rental class with the given date, person, and book.
  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

    book.rentals << self # Add the rental to the book's rentals collection
    person.rentals << self # Add the rental to the person's rentals collection
  end
end
