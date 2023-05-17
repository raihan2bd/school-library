# Represents a book object with a title and an author
class Book
  attr_accessor :title, :author

  # # Initializes a new instance of the Book class
  def initialize(title, author)
    @title = title
    @author = author
  end
end
