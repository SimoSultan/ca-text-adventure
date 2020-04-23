require "tty-prompt"

class Player

    attr_accessor :name, :exp, :level

    def initialize()
        # a player will have a name and base EXP
        # they will have not completed any challenges yet
        # must get to challenges >= 3 before they can finish
        @name = ""
        @exp = 0
        @level = ""
        @player_completed_challenges = 0
    end

    	# get players name
    # get players chosen exp level to start out at
    # as of 200421 - the only difference is that the play starts out at a higher level of EXP, 
    #               - would like to be able to make the game harder for player with higher level in future
	def get_player_info()
        prompt = TTY::Prompt.new
        puts "Before we start, what is your coder name?"
        print "=> "; user_name = gets.strip.capitalize
        puts
		user_exp = prompt.select("What level of coder do you wish to start out as?", $game.exp_levels, cycle: true)

        puts "Hi! #{user_name}. You would like to start out as experience level '#{$game.exp_levels.key(user_exp)}'"
        puts

        puts  "Is this correct? y/n"
		print "=> "; resp = gets.strip
		
		if resp == "y"
			# set the player info into a hash to send into the player class when we return out of this method
            @name = user_name
            @exp = user_exp
            @level: $game.exp_levels.key(@exp)
		end

		# call the method again if it wasn't a yes
		get_player_info()

    end

    # shows player their experience level on the main screen
    def show_player_level()
        puts "#{@name}, your current EXP = #{@exp}"
        puts "You've also completed #{@player_completed_challenges} challenge/s so far"
        # return true
    end

    def increase_exp(amount, challenge_count)
        @exp += amount
        increase_challenge_count(challenge_count) if challenge_count > 0
        # show_player_level()
    end

    def decrease_exp(amount)
        @exp -= amount
        # show_player_level()
    end

    def increase_challenge_count(amount)
        @player_completed_challenges += amount
    end

    # future feature
    def player_compared_themselves()
    end

    	# getting the experience level of each rank
	def is_player_experienced_enough_yet()
		master = $game.exp_levels["Master"]
		advanced = $game.exp_levels["Advanced"]
		beginner = $game.exp_levels["Beginner"]
		noob = $game.exp_levels["Noob"]


		# when they choose master, this is User Story 4, it's supposed to be a joke that they don't need to be at a bootcamp and are offered to restart the game
		if @level == "Master"
			puts "What are you doing here at a bootcamp, you've already mastered all the languages"
			play_again = does_player_want_to_restart()
			return play_again if play_again == false

		# when the person has enough exp to apply for a job, but still not high enough to be offered a job
		elsif @exp > $game.exp_level_for_job && @exp < $game.exp_level_for_job_offer
			show_player_level()
			puts
			puts "Well done. You have enough EXP to graduate"
			puts "You are ready for prime time and can start applying for jobs"
			puts "Go get 'em tiger!"

			play_again = does_player_want_to_restart()
			return play_again if play_again == false
		
		# when the person has enough to be offered a job
		elsif @exp > $game.exp_level_for_job_offer
			puts "Woah you're awesome, you've got a job offer already!"
			puts "Well done you have finished the game"

			play_again = does_player_want_to_restart()
			return play_again if play_again == false
		end

		# if conditions above aren't met, continue game
		return play_again = true
	end




end



