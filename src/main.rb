require_relative './modules/view'
require_relative './modules/services'
require_relative './classes/Player'
require_relative './classes/Game'
require_relative './classes/CodingPractice'
require_relative './classes/ExtraActivities'
require_relative './classes/Challenges'
require_relative './classes/PersonalBranding'
require_relative './classes/sub_classes'

require "colorize"

include View, Services

def main()

    # returns a message to user to increase screen size if is too small
    return if display_header_main() == false

    # clear screen
    # create a new global game and player instance
    # ask user to increase screen size if too small (this is in get_player_info)
    system "clear"
    $game = Game.new()
    $player = Player.new()

    # gets name from command line argument in script
    # if name was empty, ask user for it, otherwise set it from ARGV
    name = (ARGV.length > 0) && ARGV
    !name ? $player.get_player_info() : $player.set_name_from_ARGV(name[0].capitalize)
    
    
    play = true
    while play
        # refresh the pool of questions needs
        # check if player has enough EXP to finish the game or if they need to practice more
        # else it will continue
        # stop loop if players doesn't want to continue
        $game.move_all_answered_questions_back_to_questions()
        display_header_mini()
        return game_over() if $player.is_player_experienced_enough_yet() == false


        # OUTLINE OF STAGES
        # start challenge
        # stop game loop if they gave up from the question being too hard in the challenge
        # otherwise get their EXP from the challenge they just completed
        # increase the player EXP
        # displays header again to show updated EXP level in header
        # ask if they want to play an extra activity before starting next challenge
        # if player chooses not to do an extra activity, wont earn extra EXP
        # if player completed an extra activity, there will be an exp gain, seen in follow_up1.exp_increase
        # also adding 1 is the amount of extra activities they completed to their total challenge count on $player



        ## STAGE 1 ## 


        chg1 = Challenges.new()
        return false if chg1.start_challenge(1) == false
        total_chg1_exp_earnt = chg1.total_exp
        $player.increase_exp(total_chg1_exp_earnt, 1)
        display_header_mini()
        $player.show_exp_increase(total_chg1_exp_earnt)
        follow_up1 = follow_up_extra_activities()
        display_header_mini()
        return false if follow_up1 == false
        if follow_up1 != 'next challenge'
            $player.increase_exp(follow_up1.exp_increase, 1)
            display_header_mini()
            $player.show_exp_increase(follow_up1.exp_increase)
        end


        ## STAGE 2 ## 


        chg2 = Challenges.new()
        return false if chg2.start_challenge(2) == false
        total_chg2_exp_earnt = chg2.total_exp
        $player.increase_exp(total_chg2_exp_earnt, 1)
        display_header_mini()
        $player.show_exp_increase(total_chg2_exp_earnt)
        follow_up2 = follow_up_extra_activities()
        if follow_up2 != 'next challenge'
            $player.increase_exp(follow_up2.exp_increase, 1)
            display_header_mini()
            $player.show_exp_increase(follow_up2.exp_increase)
        end


        # COMPARISON ENEMY STRIKES TO KNOCK THE PLAYER DOWN

        # quit the game if player gave up
        # give player EXP or not, depending on their answer
        potential_EXP_increase = $player.player_compared_themselves(10, "first")
        return false if potential_EXP_increase == false
        $player.handle_player_comparing_themselves(potential_EXP_increase, 10)

        # return false if press_any_key_to_continue("[q]uit", "q") == false


        ## STAGE 3 ## 


        chg3 = Challenges.new()
        return false if chg3.start_challenge(3) == false
        total_chg3_exp_earnt = chg3.total_exp
        $player.increase_exp(total_chg3_exp_earnt, 1)
        display_header_mini()
        $player.show_exp_increase(total_chg3_exp_earnt)
        follow_up3 = follow_up_extra_activities()
        if follow_up3 != 'next challenge'
            $player.increase_exp(follow_up3.exp_increase, 1)
            $player.show_exp_increase(follow_up3.exp_increase)
        end


        # COMPLETED ALL 3 STAGES

        
        display_header_mini()
        puts "Well done #{$player.name}! You made it through all the challenges"
        puts "Now let's check if you have enough EXP to graduate and start looking for a job"
        press_any_key()

        # show the player that the computer is checking on the player's skill level
        spinner = TTY::Spinner.new("[:spinner] Consulting our records...", format: :bouncing_ball)
        spinner.auto_spin
        sleep(3)
        spinner.stop


        # check players EXP level, if less than or equal to the min, they need to do more challenges
        # or if they have not completed 3 challenges
         # add extra activities EXP to player if they complete any
        if $player.exp <= $game.exp_level_for_job
            display_header_mini()
            puts "I'm sorry, but you need " + "#{$game.exp_level_for_job - $player.exp} more EXP".colorize(:light_yellow) + " to graduate"
            puts "We advise you to complete some extra activities to increase your skills and personal branding"
            press_any_key_to_continue("[q]uit", "q")

            # COMPARISON ENEMY STRIKES AGAIN TO KNOCK THE PLAYER DOWN

            # quit the game if player gave up
            # give player EXP or not, depending on their answer
            potential_EXP_increase = $player.player_compared_themselves(5, "second")
            return false if potential_EXP_increase == false
            $player.handle_player_comparing_themselves(potential_EXP_increase, 5)

            # launch extra activities
            extra_EXP = extra_follow_up_extra_activities()
        end

        # GAME FINISHED
        display_header_mini()
        display_header_msg_under_mini("WELL DONE #{($player.name).upcase}!\nYou just completed ".colorize(:light_green) + "Your ".colorize(:light_blue) + "Coding ".colorize(:light_red) + "Journey".colorize(:light_blue))
        puts " You have enough skills and/or your personal branding is strong.".
        press_any_key() # goes back to top of loop, game will check their EXP and ask if they want to play again or quit


    end # of loop

end # of main method


main()

