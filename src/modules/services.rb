module Services


	def player_compared_themself()
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


	
end 