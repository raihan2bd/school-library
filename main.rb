require './app'

# Main class for the School Library App
class Main
  def initialize
    @app = App.new
  end

  # Prints the menu options
  def print_menu
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  # Executes the selected menu action
  def take_menu_action(option)
    case option
    when '1'
      @app.list_all_books
    when '2'
      @app.list_all_people
    when '3'
      @app.create_person
    when '4'
      @app.create_book
    when '5'
      @app.create_rental
    when '6'
      @app.list_rentals
    else
      puts 'Please enter a number between 1 and 7'
    end
  end

  # Displays the main menu and handles user input
  def menu
    puts 'Welcome to School Library App!'
    loop do
      print_menu
      option = gets.chomp
      if option == '7'
        puts 'Thank you for using our library ¯\^-^/¯'
        return
      end
      take_menu_action(option)
    end
  end
end

# Create an instance of the Main class and run the menu
main = Main.new
main.menu
