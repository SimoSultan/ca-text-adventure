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
    attr_accessor :questions

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

        @questions = {
            q1: {
                "1" => 1,
                "2" => 2,
                "3" => 3,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 1 + 1?",
                "Hint" => "Count with your fingers",
                "Answer" => 2,
            },
            q2: {
                "3" => 3,
                "4" => 4,
                "5" => 5,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 2 + 2?",
                "Hint" => "Count with your fingers",
                "Answer" => 4,
            },
            q3: {
                "5" => 5,
                "6" => 6,
                "7" => 7,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 3 + 3?",
                "Hint" => "Count with your fingers",
                "Answer" => 6,
            }
        }
        
    end

end # of Game class







