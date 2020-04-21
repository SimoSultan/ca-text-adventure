require 'colorize'
require 'io/console'
$terminal_width = IO.console.winsize[1] ## this gets the width of the terminal


module View





    # HEADER MESSAGES



    # display the header that will sit at the top of the screen in the main menu
    def display_header_main()
        system "clear"
        puts "*" * $terminal_width
        puts ""
        puts "Welcome to Your Coding Bootcamp Journey"
        puts ""
        puts "*" * $terminal_width
        puts ""
    end

    # display the header that will sit at the top of the screen throughout the game
    def display_header_mini()
        system "clear"
        puts "*" * $terminal_width
        puts ""
        puts "Welcome to Your Coding Bootcamp Journey"
        puts ""
        puts "*" * $terminal_width
        puts ""
    end
    
    # display the message that will be shown to user when the game finishes
    def display_outro(condition)

        if condition == 'game over'
            puts "Thanks for playing"
        end

        if condition == 'give up'
            puts "You gave up, how unfortunate."
        end
    end



    



    # this is the countdown that they will see when they are completing their extra activity
    def countdown_timer(time)
        system "clear"
        (0..time).reverse_each do |i|
            i == 1 ? (puts "#{i}!"): i == 0 ?(puts "Time is up!!!!") : (puts "#{i}")
            sleep 1
            system "clear"
        end
    end



    

end
