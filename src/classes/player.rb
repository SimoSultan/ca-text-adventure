
class Player

    attr_accessor :name, :exp

    def initialize(name, exp)
        @name = name
        @exp = exp
    end


    # shows player their experience level on the main screen
    def show_player_exp()
        puts "#{@user_name}, your current EXP = #{@user_exp}."
    end
end



