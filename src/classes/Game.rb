# require_relative '../modules/main'
# require_relative '../modules/view'
# require_relative '../modules/services'
# require_relative 'Player'
# require_relative 'CodingPractice'
# require_relative 'ExtraActivities'
# require_relative 'Challenges
# require_relative 'PersonalBranding'
# require_relative 'sub_classes'

class Game

    attr_reader :exp_levels, :follow_up_activities, :exp_level_for_job, :exp_level_for_job_offer

    def initialize()

        @exp_level_for_job = 90
        @exp_level_for_job_offer = 110
       
        @exp_levels = {
            "Master" => 100,
            "Advanced" => 20,
            "Beginner" => 5,
            "Noob" => 0,
        }

        @follow_up_activities = {
            "Move on to next challenge" => 'next challenge',
            # "See your current progress" => lambda {$player.show_player_level()},
            "Tweet about it" => lambda {Twitter.new()},
            "Do a HackerRank challenge" => lambda {HackerRank.new()},
            "Do a Codewars challenge" => lambda {Codewars.new()},
            "Do a Excercism challenge" => lambda {Excercism.new()},
            "Do a RegexCrossword challenge" => lambda {RegexCrossword.new()},
            "Write a Medium blog" => lambda {Medium.new()},
            "Make a YouTube video" => lambda {YouTube.new()},
            "Attend a Meetup" => lambda {Meetup.new()},
            "Attend a Hackathon" => lambda {Hackathon.new()},
            "Quit Game" => lambda {game_over()},
        }
        
    end

end # of Game class







