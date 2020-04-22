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
    display_header_main()
    # create a new game and player instance
    game = Game.new()
    player_info = get_player_info(game.exp_levels)
    $player = Player.new(player_info[:name], player_info[:exp], player_info[:level])

    play = true

    while play

        # displays first header during the game
        display_header_mini()
        # this will determine if player has enough EXP to apply for a job or if they need to practice more
        # it also will determine if player will be offered a job
        # it will also keep playing 
        continue = is_player_experienced_enough_yet($player, game)
        # game_over will return false and display an outro message
        return game_over() if continue == false



        ## STAGE 1 ## 


        # start first challenge
        chg1 = Challenges.new(game.questions)
        play = chg1.start_challenge()
        # stop game loop if they gave up in the challenge
        return play if play == false
        # otherwise get their EXP from the challenge they just completed
        total_chg1_exp_earnt = chg1.total_exp
        # increase the player EXP
        $player.increase_exp(total_chg1_exp_earnt, 1)
        # displays header again for any key to continue 
        display_header_mini()
        # ask if they want to do anything else before player starts next challenge
        follow_up1 = follow_up_extra_activities(game.follow_up_activities)
        # this is because they have chosen not to do any extra activities, so wont earn extra EXP
        if follow_up1 != 'next challenge'
            $player.increase_exp(follow_up1.exp_increase, 1)
            $player.show_player_level()
        end
        # check user wants to continue
        return false if press_any_key_to_continue() == false



        ## STAGE 2 ## 


        # start second challenge
        chg2 = Challenges.new(game.questions)
        play = chg2.start_challenge()
        # stop game loop if they gave up in the challenge
        return play if play == false
        # otherwise get their EXP from the challenge they just completed
        total_chg2_exp_earnt = chg2.total_exp
        # increase the player EXP
        $player.increase_exp(total_chg2_exp_earnt, 1)
        # displays header again for any key to continue 
        display_header_mini()
        # ask if they want to do anything else before player starts next challenge
        follow_up2 = follow_up_extra_activities(game.follow_up_activities)
        # this is because they have chosen not to do any extra activities, so wont earn extra EXP
        if follow_up2 != 'next challenge'
            $player.increase_exp(follow_up2.exp_increase, 1)
            $player.show_player_level()
        end
        # check user wants to continue
        return false if press_any_key_to_continue() == false


        ## STAGE 3 ## 


        # start third challenge
        chg3 = Challenges.new(game.questions)
        play = chg3.start_challenge()
        # stop game loop if they gave up in the challenge
        return play if play == false
        # otherwise get their EXP from the challenge they just completed
        total_chg3_exp_earnt = chg3.total_exp
        # increase the player EXP
        $player.increase_exp(total_chg3_exp_earnt, 1)
        # displays header again for any key to continue 
        display_header_mini()
        # ask if they want to do anything else before player starts next challenge
        follow_up3 = follow_up_extra_activities(game.follow_up_activities)
        # this is because they have chosen not to do any extra activities, so wont earn extra EXP
        if follow_up3 != 'next challenge'
            $player.increase_exp(follow_up3.exp_increase, 1)
        end

        display_header_mini()
        $player.show_player_level()


        # check players EXP level
        if $player.exp <= game.exp_level_for_job
            puts
            puts "I'm sorry, but you don't have enough EXP to graduate yet"
            puts "You will have to do some extra activities to raise your level"
            puts "Press any key to continue"
            gets

            extra_EXP = extra_follow_up_extra_activities(game.follow_up_activities)

        end


        puts "WELL DONE! You have enough EXP"
        

    end # of loop

end # of main method


main()