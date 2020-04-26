require 'colorize'
require 'faker'
require 'io/console'
$terminal_width = IO.console.winsize[1] ## this gets the width of the terminal

# this module will handle the UI
module View


    # display the header that will sit at the top of the screen in the main menu
    def display_header_main()

        if $terminal_width < 50
            puts
            puts
            puts
            puts "To display this game correctly"
            puts "We recommend you increase your"
            puts "terminal screen size please."
            puts
            puts "Then restart the game please."
            puts
            puts
            puts
            return false
        end
            
        system "clear"
        # puts "-" * $terminal_width
        # puts "Welcome to Your Coding Journey"
        puts
        puts "  Welcome to:"
        puts "-".colorize(:light_black) * $terminal_width
        puts
        puts  " " * (($terminal_width-26)/2) + '/\_/\ ___   _   _  _ __   '.colorize(:light_blue)
        puts  " " * (($terminal_width-26)/2) + '\_ _// _ \ | | | || __|   '.colorize(:light_blue)
        puts  " " * (($terminal_width-26)/2) + ' / \| (_) || |_| || |     '.colorize(:light_blue)
        puts  " " * (($terminal_width-26)/2) + ' \_/ \___/  \__,_||_|     '.colorize(:light_blue)
        puts
        puts  " " * (($terminal_width-38)/2) + '    ___            _  _               '.colorize(:light_red)
        puts  " " * (($terminal_width-38)/2) + '   / __\ ___    __| |(_) _ __    __ _ '.colorize(:light_red)
        puts  " " * (($terminal_width-38)/2) + '  / /   / _ \  / _  || ||  _ \  / _` |'.colorize(:light_red)
        puts  " " * (($terminal_width-38)/2) + ' / /___| (_) || (_| || || | | || (_| |'.colorize(:light_red)
        puts  " " * (($terminal_width-38)/2) + ' \____/ \___/  \__,_||_||_| |_| \__, |'.colorize(:light_red)
        puts  " " * (($terminal_width-38)/2) + '                                |___/ '.colorize(:light_red)
        puts  " " * (($terminal_width-46)/2) + '  __                                          '.colorize(:light_blue)
        puts  " " * (($terminal_width-46)/2) + '  \ \   ___   _   _  _ __  _ __    ___  _   _ '.colorize(:light_blue)
        puts  " " * (($terminal_width-46)/2) + '   \ \ / _ \ | | | ||  __||  _ \  / _ \| | | |'.colorize(:light_blue)
        puts  " " * (($terminal_width-46)/2) + '/\_/ /| (_) || |_| || |   | | | ||  __/| |_| |'.colorize(:light_blue)
        puts  " " * (($terminal_width-46)/2) + '\___/  \___/  \__,_||_|   |_| |_| \___| \__, |'.colorize(:light_blue)
        puts  " " * (($terminal_width-46)/2) + '                                        |___/ '.colorize(:light_blue)
        puts
        puts
        puts  " " * ($terminal_width-22) + "A game by @simo_sultan"
        puts  "-".colorize(:light_black) * $terminal_width
        puts
    end

    

    # display the header that will sit at the top of the screen throughout the game
    def display_header_mini()
        system "clear"
        puts  " " * (($terminal_width-12)/2) +                                  '   ___  '.colorize(:light_red) + '   __   '.colorize(:light_blue)
        puts  " " * (($terminal_width-26)/2) + '/\_/\ '.colorize(:light_blue) + '   / __\ '.colorize(:light_red) + '   \ \  '.colorize(:light_blue)
        puts  " " * (($terminal_width-26)/2) + '\_ _/ '.colorize(:light_blue) + '  / /    '.colorize(:light_red) + '    \ \ '.colorize(:light_blue)
        puts  " " * (($terminal_width-26)/2) + ' / \ '.colorize(:light_blue) + '  / /___ '.colorize(:light_red) + '  /\_/ / '.colorize(:light_blue)
        puts  " " * (($terminal_width-26)/2) + ' \_/ '.colorize(:light_blue) + '  \____/  '.colorize(:light_red) + ' \___/  '.colorize(:light_blue)
        puts  " " * ($terminal_width-14) + "#{$player.name}: #{$player.exp} EXP".colorize(:light_yellow)
        puts  "-".colorize(:light_black) * $terminal_width
        puts
    end


    # display the header that will sit at the top of the screen throughout the game
    def display_header_msg_under_mini(message)
        return if message == ""
        # puts "#{message}".colorize(:light_green)
        puts "#{message}"
        puts "-".colorize(:light_black) * $terminal_width
        puts
    end
    
    # display the message that will be shown to user when the game finishes
    def display_outro(condition)
        (puts "Thanks for playing\nYou made Chuck Norris proud") if condition == 'game over'
        (puts "You gave up, how unfortunate\nBetter luck next time") if condition == 'give up'
    end


    # this is the countdown that they will see when they are completing their extra activity
    def display_countdown_timer(time, header_msg, time_up_message, exp)

        system "clear"

        # this is message displayed when the timer finishes
        case time_up_message
        when "twitter"
            time_up_message = "Your Tweet:\n\n#{Faker::ChuckNorris.fact}"
        when "medium"
            time_up_message = "Your Blog:\n\n#{Faker::Quote.matz}"
        when "youtube"
            time_up_message = "#{$player.name}, your video received #{rand(100..1000)} views this time. You're getting noticed"
        when "codewars"
            time_up_message = "Well done #{$player.name}! You just added another #{rand(8..40)} points to your honor level\nYou should share that on Twitter"
        when "hackerrank"
            time_up_message = "Great job #{$player.name}! You just added another #{rand(5..20)} hackos to your rank\.Employers are noticing"
        when "regex"
            time_up_message = "Give yourself a pat on the back for figuring this one out:\n/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/"
        when "hackathon"
            time_up_message = "You made #{rand(2..10)} new LinkedIn connections at the Hackathon"
        when "meetups"
            time_up_message = "You made #{rand(2..10)} new LinkedIn connections at the Meetup.\nOne of them was secretly a recruiter"
        end

        (0..time).reverse_each do |i|
            display_header_mini()
            display_header_msg_under_mini(header_msg)
            if i == 1 
                puts "#{i}!"
            elsif i == 0 
                display_header_mini()
                display_header_msg_under_mini("For that time you put in, you just earnt #{exp} EXP".colorize(:light_green))
                puts "#{time_up_message}"
            else 
                puts "#{i}"
            end
            sleep 1
        end # of loop
        
        press_any_key()
    end # of countdown timer

end # end of View module
