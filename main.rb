require "pry"

class Lunch_Lady
    def initialize
        @main_dishes = ["Pizza", "Burger", "Chili"]
        @tray = []
        puts "Welcome to the lunchroom."
        puts "Please choose a main dish."
        add_main
        puts "Please choose two sides"
        add_side
    end

    def add_main
        @main_dishes.each_with_index do |main_dishes, index|
            puts "#{index + 1}. #{main_dishes}"
        end
        
        main_choice = gets.to_i
        if user == 1 
            @tray << @main_dishes[main_choice - 1]
        elsif user == 2
            @tray << 'Burger'
        else 
            @tray << 'Chili'
        end

        # customer = {name: 'test', main: 'test', side: '', wallet: ''}    
    end

end
    

#         # main_choice
#     end
#     main_choice(@main_dishes)
# def main_choice
#     puts ">"
#     choice = gets.to_i - 1 
#     puts "You have selected #{[choice]}"
# end


# def main_choice
    #     puts ">"
    #     choice = gets.to_i - 1
    # end
    #     puts ">"
    #     input = gets.to_i - 1
    #     "#{@mains[input]}"
    #     puts "Item added to tray."
    # end


Lunch_Lady.new


# @tray push item index selection to tray
