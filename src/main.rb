require_relative './modules/view'
require_relative './modules/services'
require_relative './classes/Player'
require_relative './classes/Game'
require_relative './classes/CodingPractice'
require_relative './classes/ExtraActivities'
require_relative './classes/Challenges'
require_relative './classes/PersonalBranding'
require_relative './classes/sub_classes'

include View, Services

def main()

    # reset screen and show main  header with big logo
    system "clear"
    # display_header_main()
    puts
    # create a new game and player instance

    $game = Game.new()
    $player = Player.new()
    # stopping the game from running if screen size is too small
    return if $player.get_player_info() == false



    play = true

    while play
        # this is an important step as we are not resetting the game on each loop
        # so the pool of questions needs to be reset
        $game.move_all_answered_questions_back_to_questions()

        # displays first header during the game
        display_header_mini()
        # this will determine if player has enough EXP to apply for a job or if they need to practice more
        # it also will determine if player will be offered a job
        # it will also keep playing 
        continue = $player.is_player_experienced_enough_yet()
        # game_over will return false and display an outro message
        return game_over() if continue == false



        ## STAGE 1 ## 


        # start first challenge
        chg1 = Challenges.new()
        play = chg1.start_challenge(1)
        # stop game loop if they gave up in the challenge
        return play if play == false
        # otherwise get their EXP from the challenge they just completed
        total_chg1_exp_earnt = chg1.total_exp
        # increase the player EXP
        $player.increase_exp(total_chg1_exp_earnt, 1)
        # displays header again for any key to continue 
        display_header_mini()
        # ask if they want to do anything else before player starts next challenge
        follow_up1 = follow_up_extra_activities()
        # this is because they have chosen not to do any extra activities, so wont earn extra EXP
        # if they have completed an extra activity, there will be an exp gain on the variable
        # and the 1 is the amount of extra activities they completed to add to their total challenge count on $player
        display_header_mini()
        if follow_up1 != 'next challenge'
            $player.increase_exp(follow_up1.exp_increase, 1)
            display_header_mini()
            $player.show_exp_increase(follow_up1.exp_increase)
        end
        # check user wants to continue
        return false if press_any_key_to_continue("[q]uit", "q") == false



        ## STAGE 2 ## 


        # start second challenge
        chg2 = Challenges.new()
        play = chg2.start_challenge(2)
        # stop game loop if they gave up in the challenge
        return play if play == false
        # otherwise get their EXP from the challenge they just completed
        total_chg2_exp_earnt = chg2.total_exp
        # increase the player EXP
        $player.increase_exp(total_chg2_exp_earnt, 1)
        # displays header again for any key to continue 
        display_header_mini()
        # ask if they want to do anything else before player starts next challenge
        follow_up2 = follow_up_extra_activities()
        # this is because they have chosen not to do any extra activities, so wont earn extra EXP
        # if they have completed an extra activity, there will be an exp gain on the variable
        # and the 1 is the amount of extra activities they completed to add to their total challenge count on $player
        if follow_up2 != 'next challenge'
            $player.increase_exp(follow_up2.exp_increase, 1)
            display_header_mini()
            $player.show_player_level()
        end
        # check user wants to continue
        return false if press_any_key_to_continue("[q]uit", "q") == false


        ## STAGE 3 ## 


        # start third challenge
        chg3 = Challenges.new()
        play = chg3.start_challenge(3)
        # stop game loop if they gave up in the challenge
        return play if play == false
        # otherwise get their EXP from the challenge they just completed
        total_chg3_exp_earnt = chg3.total_exp
        # increase the player EXP
        $player.increase_exp(total_chg3_exp_earnt, 1)
        # displays header again for any key to continue 
        display_header_mini()
        # ask if they want to do anything else before player starts next challenge
        follow_up3 = follow_up_extra_activities()
        # this is because they have chosen not to do any extra activities, so wont earn extra EXP
        # if they have completed an extra activity, there will be an exp gain on the variable
        # and the 1 is the amount of extra activities they completed to add to their total challenge count on $player
        if follow_up3 != 'next challenge'
            $player.increase_exp(follow_up3.exp_increase, 1)
        end

        display_header_mini()

        puts "Well done #{$player.name}! You made it through all the challenges"
        puts "Now let's check if you have enough EXP to graduate and start looking for a job"
        press_any_key()

        # show that the computer is checking on the player's skill level
        spinner = TTY::Spinner.new("[:spinner] An educator is checking your answer...", format: :bouncing_ball)
        spinner.auto_spin # Automatic animation with default interval
        sleep(2)
        spinner.stop


        # check players EXP level, if less than or equal to the min, they need to do more challenges
        if $player.exp <= $game.exp_level_for_job
            puts
            puts "I'm sorry, but you need #{$game.exp_level_for_job - $player.exp} more EXP to graduate"
            puts "We advise you to complete some extra activities to increase your skills and personal branding"
            press_any_key_to_continue("[q]uit", "q")

            extra_EXP = extra_follow_up_extra_activities(game.follow_up_activities)

        end

        # display a message when they complete the game with a enough EXP
        puts "WELL DONE #{$player.name}! You have enough skills and/or your personal branding is strong."
        press_any_key()
        # goes back to top of loop, the game will check their EXP and ask if they want to play again or quit

    end # of loop

end # of main method


main()