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
            "Write a Tweet (5s)" => lambda {Twitter.new()},
            "Write a Medium blog (15s)" => lambda {Medium.new()},
            "Make a YouTube video (20s)" => lambda {YouTube.new()},
            "Do a HackerRank activity (7s)" => lambda {HackerRank.new()},
            "Do a Codewars activity (7s)" => lambda {Codewars.new()},
            # "Do a Excercism challenge" => lambda {Excercism.new()},
            "Do a RegexCrossword activity (10s)" => lambda {RegexCrossword.new()},
            "Attend a Meetup (30s)" => lambda {Meetups.new()},
            "Attend a Hackathon (30s)" => lambda {Hackathon.new()},
            "Quit Game" => lambda {game_over()},
        }

        @answered_questions = {}

        # I could potentially reduce these hashes by storing a hash with just the: questions, answers and hints, and standard text
        # this would be advised if we were storing these on databases to reduce the amount of data stored
        # for now they will work in this small example
        # @questions = {
        #     q1: {
        #         "1" => 1,
        #         "2" => 2,
        #         "3" => 3,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 1 + 1?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 2,
        #     },
        #     q2: {
        #         "3" => 3,
        #         "4" => 4,
        #         "5" => 5,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 2 + 2?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 4,
        #     },
        #     q3: {
        #         "5" => 5,
        #         "6" => 6,
        #         "7" => 7,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 3 + 3?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 6,
        #     },
        #     q4: {
        #         "7" => 7,
        #         "8" => 8,
        #         "9" => 9,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 4 + 4?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 8,
        #     },
        #     q5: {
        #         "8" => 8,
        #         "9" => 9,
        #         "10" => 10,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 5 + 5?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 10,
        #     },
        #     q6: {
        #         "11" => 11,
        #         "12" => 12,
        #         "13" => 13,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 6 + 6?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 12,
        #     },
        #     q7: {
        #         "13" => 13,
        #         "14" => 14,
        #         "15" => 15,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 7 + 7?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 14,
        #     },
        #     q8: {
        #         "15" => 15,
        #         "16" => 16,
        #         "17" => 17,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 8 + 8?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 16,
        #     },
        #     q9: {
        #         "25" => 25,
        #         "26" => 26,
        #         "27" => 27,
        #         "Ask for help" => "ask",
        #         "Don't know. Move on" => "dont",
        #         "I give up" => "give",
        #         "Question" => "What is 13 + 13?",
        #         "Hint" => "Count with your fingers",
        #         "Answer" => 26,
        #     }, # of question 9
        # } # of @questions


        @questions = {
            q1: {
                "Translator" => "Translator",
                "Compiler" => "Compiler",
                "Interpreter" => "Interpreter",
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "Ruby uses a *what* to process the code you write.",
                "Hint" => "Ruby only produces the error when the piece of code is processed",
                "Answer" => "Interpreter",
            },
            q2: {
                "Alexandra Ruby" => "Alexandra Ruby",
                "Yukihiro Matsumoto" => "Yukihiro Matsumoto",
                "David Heinemeier Hansson" => "David Heinemeier Hansson",
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "Who is the founder of Ruby?",
                "Hint" => "He's not Danish",
                "Answer" => "Yukihiro Matsumoto",
            },
            q3: {
                "9" => 9,
                "10" => 10,
                "11" => 11,
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "For i in 1...10, how many times will this code repeat?",
                "Hint" => "Is the range inclusive or exclusive?",
                "Answer" => 9,
            },
            q4: {
                "RUBY" => "RUBY",
                "ybuR" => "ybuR",
                "YBUR" => "YBUR",
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => 'What will be the output of the following? "Ruby".reverse.upcase',
                "Hint" => "Carefully look at the method names and process the word that way",
                "Answer" => "YBUR",
            },
            q5: {
                "Array#map(&:capitalize)" => "Array#map(&:capitalize)",
                "Array#each{|x|x.capitalize}" => "Array#each{|x|x.capitalize}",
                "Array#each(:&capitalize)" => "Array#each(:&capitalize)",
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "What is the shortest way to capitalize each string in an array of strings?",
                "Hint" => "More than one are correct, but re-read the question to satisfy the solution",
                "Answer" => "Array#map(&:capitalize)",
            },
            q6: {
                "error" => "error",
                "woof" => '"woof"',
                "chirp" => '"chirp',
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => 'Given pet="bird". What does this return? pet = "dog" ? "woof" : "chirp"',
                "Hint" => "Count with your fingers",
                "Answer" => "error",
            },
            q7: {
                "run away" => "run away",
                "chirp" => "chirp",
                "meow" => "meow",
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => 'Given pet="bird" and animal = "jaguar". What does this return? pet.chars[2] == "i" ? "chirp" : animal.chars.reverse[2] == "u" ? "meow" : "run away"',
                "Hint" => "Take your time on this. Try it out in IRB if you get stuck",
                "Answer" => "meow",
            },
            q8: {
                "hagrids_pet[:heads] = 3" => "hagrids_pet[:heads] = 3",
                'hagrids_pet["heads"] = 3' => 'hagrids_pet["heads"] = 3',
                "hagrids_pet[heads:] = 3" => "hagrids_pet[heads:] = 3",
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => 'How can I change the value of Fluffys heads to be 3? Given hagrids_pet= {:name => "Fluffy, :heads =>2}',
                "Hint" => "Is 'heads' a symbol or a string, and find out how to use a symbol in a hash when accessing its value",
                "Answer" => "hagrids_pet[:heads] = 3",
            },
            q9: {
                "attr-writer" => "attr-writer",
                "attr_reader" => "attr_reader",
                "attr_accessor" => "attr_accessor",
                "Ask for help" => "ask",
                "Don't know. Move on" => "dont",
                "I give up" => "give",
                "Question" => "How can instance variables be made read-only outside a class?",
                "Hint" => "The hyphenated word in the question is the important one",
                "Answer" => "attr_reader",
            }, # of question 9
        } # of @questions

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

