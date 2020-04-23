require 'tty-prompt'
require_relative "view"
include View


# this module will handle UX
module Services


	# # get players name
    # # get players chosen exp level to start out at
    # # as of 200421 - the only difference is that the play starts out at a higher level of EXP, 
    # #               - would like to be able to make the game harder for player with higher level in future
	# def get_player_info()
    #     prompt = TTY::Prompt.new
    #     puts "Before we start, what is your coder name?"
    #     print "=> "; user_name = gets.strip.capitalize
    #     puts
	# 	user_exp = prompt.select("What level of coder do you wish to start out as?", $game.exp_levels, cycle: true)

    #     puts "Hi! #{user_name}. You would like to start out as experience level '#{$game.exp_levels.key(user_exp)}'"
    #     puts

    #     puts  "Is this correct? y/n"
	# 	print "=> "; resp = gets.strip
		
	# 	if resp == "y"
	# 		# set the player info into a hash to send into the player class when we return out of this method
	# 		return player_info = {name: user_name, level: $game.exp_levels.key(user_exp), exp: user_exp}
	# 	end

	# 	# call the method again if it wasn't a yes
	# 	get_player_info()

    # end



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
        display_header_mini()
		display_outro('give up')
		display_outro('game over')
		wait(2)
		return false
	end




	# when the user wants to end the game
	# stops the loop and displays a message to player
	def game_over()
        display_header_mini()
		display_outro('game over')
		wait(2)
		return false
	end




	# offering players if they want to work on their level/grind before their next challenge
	# they have list of options from sub_classes
	def follow_up_extra_activities()

		display_header_mini()
		display_header_msg_under_mini("Great work on the challenge questions")

		follow_up_activities = $game.follow_up_activities
		prompt = TTY::Prompt.new
		
		choice = prompt.select("What do you want to do now?\n", follow_up_activities, cycle: true, per_page: 11, help: '')
	end


	# runs the follow_up_extra_activities method in a loop to allow the player to increase their level
	# they can finish when they're happy with their level
	def extra_follow_up_extra_activities()

		display_header_mini()
		follow_up_activities = $game.follow_up_activities
		continue = true

		while continue
			catch_up_EXP = follow_up_extra_activities()
			if catch_up_EXP != 'next challenge'
				$player.increase_exp(catch_up_EXP.exp_increase, 1)
			end
			display_header_mini()
			$player.show_player_level()


			return if press_any_key_to_continue("[f]inish levelling up", "f") == false
		end
	end



	# getting user to continue to next challenge or quit out the app
	def press_any_key_to_continue(word, confirm)
		puts
		puts "Press any key to continue... or #{word}"
		resp = gets.strip.downcase[0]
		return false if resp == confirm
	end




	# ask user if they want to restart the game		
	def does_player_want_to_restart()
		puts
		puts "Do you want to play again? y/n"
		print "=> "; play_again = gets.strip.downcase[0]
		
		# player wants to play again
		return true if play_again == "y"

		# player does NOT want to play again
		return false
	end

	
end 