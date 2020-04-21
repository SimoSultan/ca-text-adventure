
class Challenges
    def initialize(starting_exp)
        @starting_exp = starting_exp
        @exp_gained = 0
    end

    def start_challenge()
        puts "Great work at completing the challenge"
        @exp_gained += 20
    end

    def follow_up_after_challenge()

    end
end




