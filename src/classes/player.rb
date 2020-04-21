require "tty-prompt"

class Player

    attr_accessor :name, :exp

    def initialize(name = false, exp = 0, exp_levels)
        @user_name = name
        @user_exp = exp
        @exp_levels = exp_levels
        @player = {name: @user_name, exp: @exp}
    end


    # get players name
    # get players chosen exp level to start out at
    # as of 200421 - the only difference is that the play starts out at a higher level of EXP, 
    #               - would like to be able to make the game harder for player with higher level in future
    def get_player_info()
        prompt = TTY::Prompt.new
        puts "Before we start, what is your coder name?"
        print "=> "; @user_name = gets.strip
        puts ""
        puts "Hello there #{@user_name}"
        puts ""
        @user_exp = prompt.select("What level of coder do you wish to start out as?", @exp_levels)
    
        return @player
    end


    def show_player_exp()
        # if $exp >= 80
        #     puts "Great you are skilled enough. Now go apply for a job!"
        #     return quit = true
        # else
    end
end



