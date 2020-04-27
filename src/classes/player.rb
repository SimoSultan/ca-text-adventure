require_relative "../modules/view"
require_relative "../modules/services"
include View, Services

require 'tty-prompt'
require 'colorize'

class Player

    attr_accessor :name, :exp, :level

    def initialize()
        @name = ""
        @exp = 0
        @level = ""
        @player_completed_challenges = 0
    end


	def get_player_info()
        # # returns a message to user to increase screen size if is too small
        # return false if display_header_main() == false

        begin
            display_header_main()
            puts "Before we start, we need your coder name?".colorize(:light_green)
            print "=> "; user_name = gets.strip.capitalize
            raise StandardError if user_name == ""
        rescue => exception
            puts
            puts "Not a valid name sorry\nPlease try again".colorize(:light_red)
            press_any_key()
            retry
        end

        puts
        puts "Greetings fellow coder #{user_name}!"

        # if not happy with their name, restart function
        get_player_info() if press_any_key_to_continue("[r]etry", "r") == false
 
        @name = user_name
        @level = "Noob"

        # prompt = TTY::Prompt.new
        # will add these back in, in future update when I can make different levels of questions for the player
        # user_exp = prompt.select("What level of coder do you wish to start out as?", $game.exp_levels, cycle: true)
        # puts "Hi! #{user_name}. You would like to start out as experience level '#{$game.exp_levels.key(user_exp)}'"
        # @exp = user_exp
        # @level = $game.exp_levels.key(@exp)
    end


    def set_name_from_ARGV(name)
        @name = name
        @level = "Noob"

        display_header_main()
        puts "Greeting fellow coder #{@name}!"
    end


    def show_player_level()
        # shows player their experience level on the main screen
        
        puts
        puts "#{@name}, your current EXP = #{@exp}"
        puts "You've also completed #{@player_completed_challenges} challenge/s so far"
    end


    def show_exp_increase(exp_increase)
    # shows recent increase of EXP they just earnt

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



    def player_compared_themselves(exp_decrease, time) 
        # an enemy has approached the player and did some damage
        # however give the play an option to pick that EXP back up depending on how they want to act

        prompt = TTY::Prompt.new
        display_header_mini()
        puts "OH NO! Out of the blue came the Enemy..." + " Comparison".colorize(:light_red)
        if time == "first"
            puts "You saw someone elses' work and doubted yourself and " + "lost #{exp_decrease} EXP".colorize(:light_red)
        else
            puts "You doubted yourself again and " + "lost #{exp_decrease} EXP".colorize(:light_red)
        end

        $player.decrease_exp(exp_decrease)
        press_any_key()
        display_header_mini()
        potential_EXP_increase = prompt.select('How did you react? Did you pick yourself up, brush off the loss, and motivate yourself to work harder? Or do you take the hit') do |menu|
            menu.help " "
            menu.choice "I took the hit", 'stays same'
            menu.choice "I'm going to work harder now", 'motivated'
            menu.choice "I gave up", lambda {give_up()}
        end
        return potential_EXP_increase
    end



    def handle_player_comparing_themselves(what_happened, exp_loss)
        # either player has taken the hit and didn't get back up stronger
        # or they learnt from their comparison and improved, giving them a little bit more EXP at same time
        # player does not earn extra challenges for this
        increase_EXP = exp_loss + 3
        display_header_mini()
        if what_happened == "stays same"
            puts "It happens to the best of us, unfortunately this time we just took it too hard."
        elsif what_happened == "motivated"
            puts "We all experience this, but it's how we choose to act on these feelings. Pat yourself on the back #{@name}\nYou just earnt yourself " + "#{increase_EXP} EXP".colorize(:light_green)
            $player.increase_exp(increase_EXP, 0)
        end
        press_any_key()
    end




    def is_player_experienced_enough_yet()
        # 1st: if player has enough exp to apply for a job, but still not high enough to be offered a job
        # 2nd: if player has enough exp to be offered a job
        # else continue game 

        # Feature put on hold: if they choose master, this is User Story 4, it's supposed to be a joke that they don't need to be at a bootcamp and are offered to restart the game
		# if @level == "Master"
		# 	puts "What are you doing here at a bootcamp, you've already mastered all the languages"
		# 	play_again = does_player_want_to_restart()
        #     return play_again if play_again == false
        # end

		if @exp > $game.exp_level_for_job && @exp < $game.exp_level_for_job_offer
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
