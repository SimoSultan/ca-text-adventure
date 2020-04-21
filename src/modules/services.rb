require 'tty-prompt'

# this module will handle UX
module Services


	# get players name
    # get players chosen exp level to start out at
    # as of 200421 - the only difference is that the play starts out at a higher level of EXP, 
    #               - would like to be able to make the game harder for player with higher level in future
	def get_player_info(exp_levels)
        prompt = TTY::Prompt.new
        puts "Before we start, what is your coder name?"
        print "=> "; user_name = gets.strip.capitalize
        puts
		user_exp = prompt.select("What level of coder do you wish to start out as?", exp_levels, cycle: true)

        puts "Hi! #{user_name}. You would like to start out as experience level '#{exp_levels.key(user_exp)}'"
        puts

        puts  "Is this correct? y/n"
		print "=> "; resp = gets.strip
		
		if resp == "y"
			player_info = {name: user_name, exp: user_exp}
		else
			get_player_info()
		end

		return player_info
    end



	# setting a predefined amount of time to wait
	# instead of writing sleep(2) everywhere and having to change it
	def wait(time)
		index = time
		sleep_time = [(0.1), (0.4), (1.0), (1.5), (3.0)]
		sleep(sleep_time[index])
	end


	# when the player wants to give up
	# display a give up message, wait some time to let it sink in
	# then end the game
	def give_up()
		display_outro('give up')
		wait(5)
		game_over()
	end


	# when the user wants to end the game
	# stops the loop and displays a message to player
	def game_over()
		display_outro('game over')
		wait(4)
		return true
	end



	def player_compared_themself()
	end


	
end 