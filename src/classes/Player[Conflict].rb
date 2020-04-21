require "tty-prompt"

class Player

    attr_accessor :name, :exp

    def initialize(exp_levels, name, exp)
        @user_name = name
        @user_exp = exp
        @player = {name: @user_name, exp: @exp}

        # get players name
        # get players chosen exp level to start out at
        # as of 200421 - the only difference is that the play starts out at a higher level of EXP, 
        #               - would like to be able to make the game harder for player with higher level in future
        def get_player_info()
            prompt = TTY::Prompt.new
            puts "Before we start, what is your coder name?"
            print "=> "; @user_name = gets.strip
            puts
            @user_exp = prompt.select("What level of coder do you wish to start out as?", exp_levels, cycle: true)
    
            puts
            puts "Hi! #{@user_name}. You would like to start out as a #{exp_levels}"
            puts
    
            puts "Is this correct? y/n"
            print "=> "; resp = gets.strip.downcase[0]
    
            resp == "y" ? (return @player) : get_player_info()
            
        end
    end



    # shows player their experience level on the main screen
    def show_player_exp()
        puts "#{@user_name}, your current EXP = #{@user_exp}."
    end
end



