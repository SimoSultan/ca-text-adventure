
class Player

    attr_accessor :name, :exp, :level

    def initialize(name, exp, level)
        # a player will have a name and base EXP
        # they will have not completed any challenges yet
        # must get to challenges >= 3 before they can finish
        @name = name
        @exp = exp
        @level = level
        @player_completed_challenges = 0
    end

    # shows player their experience level on the main screen
    def show_player_level()
        puts "#{@name}, your current EXP = #{@exp}"
        puts "You've also completed #{@player_completed_challenges} challenge/s"
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


end



