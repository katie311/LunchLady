require "pry"

@diner = [
    {name: '', budget: ''}
]

@tray = {main: '', side1: '', side2: ''}
@mains = [
    { :Pizza => "10", :Burger => "8",
    :Chili => "5" }
]
@sides = [
    { :Fries => "3", :Fruit => "4", :Salad => "6"}
]
def menu
    puts "-- Welcome to the Lunch Room --"
    puts "1) Create Profile"
    puts "2) Select Meal"
    puts "3) View Tray"
    puts "4) Exit"

    choice = gets.to_i

    case choice
    when 1
        add_diner
    when 2
        choose_meal
    when 3 
        view_tray
    when 4 
        puts "Goodbye"
        exit
    else
        puts "Invalid Choice"
    end
    menu
end

    def add_diner
        diner = {}
        puts "Enter Your Name:"
        diner[:name] = gets.chomp
        puts "How much would you like to spend? $___"
        diner[:budget] = gets.chomp
        puts "Profile Created Successfully."
        @diner << diner
    end


    def choose_meal
        puts "Choose a Main Dish:"
        puts @mains
        @tray[:main] = gets.chomp
        puts "Your Tray:"
        puts @tray[:main]
        puts "Choose Side 1"
        puts @sides
        @tray[:side1] = gets.chomp
        puts "Choose Side 2"
        puts @sides
        @tray[:side2] = gets.chomp
        puts "Your Tray:"
        puts @tray
    end
    
    def view_tray
        puts @tray
    end



menu