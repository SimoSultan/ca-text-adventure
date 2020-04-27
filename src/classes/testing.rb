system "clear"

require 'test/unit'
require_relative "./sub_classes.rb"
require_relative "./Player"

class SubClassTest < Test::Unit::TestCase

    # testing the creation of a Twitter instance and it calling the countdown timer and returning the correct EXP
    def test_exp_increase()

        $player = Player.new
        twitter = Twitter.new(1, 'test header', 'test time up', 7)
        assert_equal(7, twitter.exp_increase)

        medium = Medium.new(1, 'test header', 'test time up', 7)
        assert_equal(7, medium.exp_increase)

        youtube = YouTube.new(1, 'test header', 'test time up', 7)
        assert_equal(7, youtube.exp_increase)

        hackerrank = HackerRank.new(1, 'test header', 'test time up', 7)
        assert_equal(7, hackerrank.exp_increase)

        code = Codewars.new(1, 'test header', 'test time up', 7)
        assert_equal(7, code.exp_increase)

        reg = RegexCrossword.new(1, 'test header', 'test time up', 7)
        assert_equal(7, reg.exp_increase)

        meet = Meetups.new(1, 'test header', 'test time up', 7)
        assert_equal(7, meet.exp_increase)

        hackathons = Hackathons.new(1, 'test header', 'test time up', 7)
        assert_equal(7, hackathons.exp_increase)

    end

    # testing to see that the exp received from the creation of a sub class increases the players experience level
    def test_player_exp_increase()
        $player = Player.new()
        $player.increase_exp(7, 1)
        assert_equal(7, $player.exp)
    end

end




# require_relative "../modules/services.rb"
# include Services


# class GiveUpTest < Test::Unit::TestCase

#     # testing the user giving up in the middle of a challenge
#     def test_user_give_up()

#     end
# end