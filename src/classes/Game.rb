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
    attr_accessor :questions, :answered_questions

    def initialize()

        @exp_level_for_job = 130
        @exp_level_for_job_offer = 160
        @challenges_to_complete_before_graduating = 3
       
        @exp_levels = {
            "Master" => 100,
            "Advanced" => 20,
            "Beginner" => 5,
            "Noob" => 0,
        }

        @follow_up_activities = {
            "Move on to next challenge" => 'next challenge',
            "Write a Tweet" => lambda {Twitter.new()},
            "Write a Medium blog" => lambda {Medium.new()},
            "Make a YouTube video" => lambda {YouTube.new()},
            "Do a HackerRank activity" => lambda {HackerRank.new()},
            "Do a Codewars activity" => lambda {Codewars.new()},
            # "Do a Excercism challenge" => lambda {Excercism.new()},
            "Do a RegexCrossword activity" => lambda {RegexCrossword.new()},
            "Attend a Meetup" => lambda {Meetups.new()},
            "Attend a Hackathon" => lambda {Hackathon.new()},
            "Quit Game" => lambda {game_over()},
        }

        @answered_questions = {}

        # I could potentially reduce these hashes by storing a hash with just the: questions, answers and hints, and standard text
        # this would be advised if we were storing these on databases to reduce the amount of data stored
        # for now they will work in this small example
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
            },
            q4: {
                "7" => 7,
                "8" => 8,
                "9" => 9,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 4 + 4?",
                "Hint" => "Count with your fingers",
                "Answer" => 8,
            },
            q5: {
                "8" => 8,
                "9" => 9,
                "10" => 10,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 5 + 5?",
                "Hint" => "Count with your fingers",
                "Answer" => 10,
            },
            q6: {
                "11" => 11,
                "12" => 12,
                "13" => 13,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 6 + 6?",
                "Hint" => "Count with your fingers",
                "Answer" => 12,
            },
            q7: {
                "13" => 13,
                "14" => 14,
                "15" => 15,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 7 + 7?",
                "Hint" => "Count with your fingers",
                "Answer" => 14,
            },
            q8: {
                "15" => 15,
                "16" => 16,
                "17" => 17,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 8 + 8?",
                "Hint" => "Count with your fingers",
                "Answer" => 16,
            },
            q9: {
                "25" => 25,
                "26" => 26,
                "27" => 27,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is 13 + 13?",
                "Hint" => "Count with your fingers",
                "Answer" => 26,
            },
        }
    end 


    # add question that has been asked to answered_questions
    # remove asked question from original pool
    def move_used_question_to_answered(q)
        @answered_questions[q] = @questions[q]
        @questions.delete(q)
    end


    # add question that has been asked to answered_questions
    # remove asked question from original pool
    # only do this when @answered_questions IS NOT empty (i.e on 2nd loop)
    def move_all_answered_questions_back_to_questions()
        @questions = @answered_questions if !@answered_questions.empty?
        @answered_questions = {}
    end

end # of Game class

