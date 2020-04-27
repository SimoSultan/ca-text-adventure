require 'colorize'
require 'tty-prompt'
require_relative "view"
include View


# this module will handle mostly UX
module Services



	# when the player wants to give up
	# display a give up message, wait some time to let it sink in
	# then end the game
	def give_up()
        display_header_mini()
		display_outro('give up')
		display_outro('game over')
		sleep(1.5)
		return false
	end



	# when the user wants to end the game
	# stops the loop and displays a message to player
	def game_over()
        display_header_mini()
		display_outro('game over')
		sleep(1.5)
		return false
	end



	# offering players if they want to work on their level/grind before their next challenge
	# they have list of options from sub_classes
	def follow_up_extra_activities()
		display_header_mini()
		display_header_msg_under_mini(("Would you like to earn some extra EXP on an extra activity?\nHint: The more time you put in, the more EXP you get".colorize(:light_green)))
		follow_up_activities = $game.follow_up_activities
		prompt = TTY::Prompt.new
		choice = prompt.select("If so, which one would you like to do?\n", follow_up_activities, cycle: true, per_page: 11, help: '')
	end


	# runs the follow_up_extra_activities method in a loop to allow the player to increase their level
	# they can finish when they're happy with their level
	def extra_follow_up_extra_activities()
		display_header_mini()
		follow_up_activities = $game.follow_up_activities
		continue = true

		while continue
			catch_up_EXP = follow_up_extra_activities()
			($player.increase_exp(catch_up_EXP.exp_increase, 1)) if catch_up_EXP != 'next challenge'
			display_header_mini()
			$player.show_player_level()
			return if press_any_key_to_continue("[f]inish levelling up", "f") == false
		end
	end



	# getting user to continue to next challenge or quit out the app
	def press_any_key_to_continue(word, confirm)
		puts
		puts "Press any key to continue... or #{word}".colorize(:light_cyan)
		resp = STDIN.gets.strip.downcase[0]
		return false if resp == confirm
	end



	def press_any_key()
		puts
		puts
		puts "Press any key to continue...".colorize(:light_cyan)
		STDIN.gets
	end



	# ask user if they want to restart the game		
	def does_player_want_to_restart()

		begin
			puts
			puts "Do you want to play again? y/n".colorize(:light_cyan)
			print "=> "; play_again = STDIN.gets.strip.downcase[0]
            raise StandardError if play_again == "" || play_again != "y" || play_again != "n"
        rescue => exception
            puts
            puts "Not a valid input sorry\nPlease try again".colorize(:light_red)
            press_any_key()
            retry
        end

		# player wants to play again
		return true if play_again == "y"
		# otherwise player does NOT want to play again
		return false
	end



	def does_player_want_to_offer_help(challenge_no)
		prompt = TTY::Prompt.new
		display_header_mini()
		display_header_msg_under_mini(@message)
		puts "#{$player.name} just completed challenge ##{challenge_no}"
		puts
        user_resp = prompt.select("Now, would you like to help out some colleagues who are stuck?") do |menu|
            menu.help " "
            menu.choice "Yes, happy to", 'yes'
            menu.choice "I'd rather move on thankyou", 'no'
	   end
	   return user_resp
    end

	
end 