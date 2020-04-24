# require "colorize"
require_relative "../modules/view"
require_relative "../modules/services"
include View, Services

class Player

    attr_accessor :name, :exp, :level

    def initialize()
        @name = ""
        @exp = 0
        @level = ""
        @player_completed_challenges = 0
    end


	def get_player_info()
        # prompt = TTY::Prompt.new
        # this is stopping the game from running if users screen size is too small
        return false if display_header_main() == false


        puts "Before we start, what is your coder name?".colorize(:light_green)
        print "=> "; user_name = gets.strip.capitalize
        display_header_main()
        puts
        puts "Hi! #{user_name}"

        # if not happy with their name, restart function
        get_player_info() if press_any_key_to_continue("[r]etry", "r") == false
 
        @name = user_name
        @level = "Noob"

        # will add these back in, in future update when I can make different levels of questions for the player
        # user_exp = prompt.select("What level of coder do you wish to start out as?", $game.exp_levels, cycle: true)
        # puts "Hi! #{user_name}. You would like to start out as experience level '#{$game.exp_levels.key(user_exp)}'"
        # @exp = user_exp
        # @level = $game.exp_levels.key(@exp)
    end


    # shows player their experience level on the main screen
    def show_player_level()
        puts
        puts "#{@name}, your current EXP = #{@exp}"
        puts "You've also completed #{@player_completed_challenges} challenge/s so far"
    end


    # shows recent increase of EXP they just earnt
    def show_exp_increase(exp_increase)
        puts
        puts "#{@name}, you just earnt #{exp_increase} EXP on that last challenge"
        puts "And you've completed a total of #{@player_completed_challenges} challenge/s so far"
    end


    def increase_exp(amount, challenge_count)
        @exp += amount
        increase_challenge_count(challenge_count) if challenge_count > 0
    end


    def decrease_exp(amount)
        @exp -= amount
    end


    def increase_challenge_count(amount)
        @player_completed_challenges += amount
    end


    # future feature
    def player_compared_themselves()
    end


	def is_player_experienced_enough_yet()
		# 1st: they choose master, this is User Story 4, it's supposed to be a joke that they don't need to be at a bootcamp and are offered to restart the game
        # 2nd: if player has enough exp to apply for a job, but still not high enough to be offered a job
        # 3rd: if player has enough exp to be offered a job
        # else continue game 
		if @level == "Master"
			puts "What are you doing here at a bootcamp, you've already mastered all the languages"
			play_again = does_player_want_to_restart()
			return play_again if play_again == false

		elsif @exp > $game.exp_level_for_job && @exp < $game.exp_level_for_job_offer
			show_player_level()
			puts
			puts "Well done. You have enough EXP to graduate"
			puts "You are ready for prime time and can start applying for jobs"
			puts "Go get 'em tiger!"
			return false if does_player_want_to_restart() == false
		
		elsif @exp > $game.exp_level_for_job_offer
			puts "Woah you're awesome, you've got a job offer already!"
			puts "Well done you have finished the game"
			return false if does_player_want_to_restart() == false
		end

		return play_again = true
	end # of is player experienced enough

end # of class



