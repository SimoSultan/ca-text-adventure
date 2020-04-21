
class Player

    attr_accessor :name, :exp

    def initialize(name, exp)
        # a player will have a name and base EXP
        # they will have not completed any challenges yet
        # must get to challenges >= 3 before they can finish
        @name = name
        @exp = exp
        @player_completed_challenges = 0
    end

    def increase_exp(amount)
        @exp += amount
    end

    def decrease_exp(amount)
        @exp -= amount
    end

    def update_challenge_count(amount)
        @player_completed_challenges += amount
    end

    # shows player their experience level on the main screen
    def show_player_level()
        puts "#{@user_name}, your current EXP = #{@user_exp}."
        puts "You've also completed #{@player_completed_challenges} challenge/s"
    end
end



