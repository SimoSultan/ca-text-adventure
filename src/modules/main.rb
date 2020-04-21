
require_relative 'view'
require_relative 'services'
require_relative '../classes/Player'
require_relative '../classes/Game'
require_relative '../classes/CodingPractice'
require_relative '../classes/ExtraActivities'
require_relative '../classes/Challenges'
require_relative '../classes/PersonalBranding'
require_relative '../classes/sub_classes'

include View, Services


def main()

    system "clear"
    display_header_main()
    
    game = Game.new()
    player_info = get_player_info(game.exp_levels)
    player = Player.new(player_info[:name], player_info[:exp])

    play = true

    while @play

        display_header_main()

        #start first challenge
        challenge1 = Challenges.new()
        player.show_player_exp()
        follow_up_after_challenge()

        #start second challenge
        challenge2 = Challenges.new()
        player.show_player_exp()
        follow_up_after_challenge()
        
        #start third challenge
        challenge3 = Challenges.new()
        player.show_player_exp()
        follow_up_after_challenge()

        # this will determine if player has enough EXP to apply for a job or if they need to practice more
        # it also will determine if player will be offered ta job
        does_player_have_enough_EXP()

        # this will should return true or false depending on user input
        play = does_player_want_to_continue()


    end # of loop

end # of main method


main()