# require_relative '../modules/main'
# require_relative '../modules/view'
# require_relative '../modules/services'
# require_relative 'Player'
# require_relative 'CodingPractice'
# require_relative 'ExtraActivities'
# require_relative 'Challenges'
# require_relative 'PersonalBranding'
# require_relative 'sub_classes'

class Game

    attr_accessor :player, :exp_levels, 

    def initialize()
        @exp_levels = {
            'Master' => 100,
            'Advanced' => 20,
            'Beginner' => 5,
            'Noob' => 0,
        }
    end

end # of Game class







