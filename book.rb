# Represents a book object with a title, an author, and associated rentals
class Book
  attr_accessor :title, :author

  # Initializes a new instance of the Book class with the given title and author.
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = [] # Initialize an empty array to store the rentals
  end

  # Adds a rental for this book by the specified person on the given date.
  # Returns the created Rental object.
  def add_rental(person, date)
    rental = Rental.new(date, self, person) # Create a new Rental object
    @rentals << rental # Add the rental to the book's rentals collection
    rental # Return the created Rental object
  end
end
