
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


    play = true

    while play

        # reset screen and show logo
        system "clear"
        display_header_main()
    
        # create a new game and player instance
        game = Game.new()
        player_info = get_player_info(game.exp_levels)
        $player = Player.new(player_info[:name], player_info[:exp], player_info[:level])

        display_header_mini()

        # this will determine if player has enough EXP to apply for a job or if they need to practice more
        # it also will determine if player will be offered a job
        # it will also keep playing 
        continue = is_player_experienced_enough_yet($player, game)
        # game_over will return false and display an outro message
        return play = game_over() if continue == 'no'


        #start first challenge
        chg1 = Challenges.new()
        play = chg.start_challenge()
        return play if play == false
        total_chg_exp_earnt = chg.total_exp
        puts "total exp earnt from chg = #{total_chg_exp_earnt}"
        $player.increase_exp(total_chg_exp_earnt, 3)
        $player.show_player_level()
        
        follow_up1 = follow_up_after_challenge(game.follow_up_activities)

        # if follow_up1 != 'next challenge' && follow_up1 != true
        if follow_up1 != 'next challenge'
            $player.increase_exp(follow_up1.exp_increase, 1)
            $player.show_player_level()
        end

        continue = press_any_key_to_continue()
        return play = false if continue == 'no'

        puts "next challenge"
        # #start second challenge
        # # challenge2 = Challenges.new()
        # # exp_gained2 = challenge2.start_challenge()
        # player.increase_exp(exp_gained2)
        # player.update_challenge_count(1)
        # player.show_player_level()

        # # follow_up2 = ExtraActivities.new()
        # # exp_follow2 = follow_up2.follow_up_after_challenge()
        # player.increase_exp(exp_follow2)
        # player.show_player_level()

        # continue = press_any_key_to_continue()
        # return play = false if continue == false
        
        # #start third challenge
        # # challenge3 = Challenges.new()
        # # exp_gained3 = challenge3.start_challenge()
        # player.increase_exp(exp_gained3)
        # player.update_challenge_count(1)
        # player.show_player_level()

       
        # # follow_up3 = follow_up_after_challenge()
        # player.increase_exp(exp_follow3)
        # player.show_player_level()
        
        # continue = press_any_key_to_continue()
        # return play = false if continue == false


        # does_player_have_enough_EXP()

        # # this will should return true or false depending on user input
        # play = does_player_want_to_continue()

        play = false
    end # of loop

end # of main method


main()