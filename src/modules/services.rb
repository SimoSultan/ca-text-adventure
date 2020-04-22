require 'tty-prompt'
require_relative "view"
include View


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
			# set the player info into a hash to send into the player class when we return out of this method
			return player_info = {name: user_name, level: exp_levels.key(user_exp), exp: user_exp}
		end

		# call the method again if it wasn't a yes
		get_player_info()

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
	def follow_up_extra_activities(follow_up_challenges)
		display_header_mini()
		display_header_msg_under_mini("Great work on the challenge questions")
        prompt = TTY::Prompt.new
		choice = prompt.select("What do you want to do now?\n", follow_up_challenges, cycle: true, per_page: 11, help: '')
	end


	def extra_follow_up_extra_activities(follow_up_challenges)
		display_header_mini()
		continue = true
		while continue
			catch_up_EXP = follow_up_extra_activities(follow_up_challenges)
			if catch_up_EXP != 'next challenge'
				$player.increase_exp(catch_up_EXP.exp_increase, 1)
			end
			display_header_mini()
			$player.show_player_level()


			return if press_any_key_to_continue() == false
		end
	end



	# getting user to continue to next challenge or quit out the app
	def press_any_key_to_continue()
		puts
		puts "Press any key to continue... or [q]uit"
		resp = gets.strip.downcase[0]
		return false if resp == "q"
	end




	# getting the experience level of each rank
	def is_player_experienced_enough_yet(player, game)
		master = game.exp_levels["Master"]
		advanced = game.exp_levels["Advanced"]
		beginner = game.exp_levels["Beginner"]
		noob = game.exp_levels["Noob"]


		# when they choose master, this is User Story 4, it's supposed to be a joke that they don't need to be at a bootcamp and are offered to restart the game
		if player.level == "Master"
			puts "What are you doing here at a bootcamp, you've already mastered all the languages"
			play_again = does_player_want_to_continue()
			return play_again if play_again == false

		# when the person has enough exp to apply for a job, but still not high enough to be offered a job
		elsif player.exp > game.exp_level_for_job && player.exp < game.exp_level_for_job_offer
			player.show_player_level()
			puts
			puts "Well done. You have enough EXP to graduate"
			puts "You are ready for prime time and can start applying for jobs"
			puts "Go get 'em tiger!"

			play_again = does_player_want_to_continue()
			return play_again if play_again == false
		
		# when the person has enough to be offered a job
		elsif player.exp > game.exp_level_for_job_offer
			puts "Woah you're awesome, you've got a job offer already!"
			puts "Well done you have finished the game"

			play_again = does_player_want_to_continue()
			return play_again if play_again == false
		end

		# if conditions above aren't met, continue game
		return play_again = true
	end




	# ask user if they want to restart the game		
	def does_player_want_to_continue()
		puts
		puts "Do you want to play again? y/n"
		print "=> "; play_again = gets.strip.downcase[0]
		
		# player wants to play again
		return true if play_again == "y"

		# player does NOT want to play again
		return false
	end

	
end 