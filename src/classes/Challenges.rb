require 'tty-prompt'
require_relative "../modules/services"
require_relative "../modules/view"
include Services, View


class Challenges

    attr_accessor :help_exp, :correct_ans_exp, :persistence_exp, :total_exp

    def initialize()
        # @starting_exp = player.exp
        @questions = $game.questions
        @help_exp = 0
        @correct_ans_exp = 0
        @persistence_exp = 0
        @total_exp = 0
        @message = "You only get one try per question, so take your time"
        display_header_mini()
    end

    def update_chg_total_exp()
        @total_exp += @help_exp + @persistence_exp + @correct_ans_exp
    end

    def get_ans(question_symbol)
        #question_number is a symbol here
        return @questions[question_symbol]["Answer"]
    end



    def start_challenge()
        display_header_mini()
        puts "Starting challenge"

        # run a loop 3 times 
        for i in 1..3
            display_header_mini()
            display_header_msg_under_mini(@message)

            if i == 3
                # if player attempts 3 questions
                # they get bonus points for persistence and practice
                @persistence_exp += 10
            end

            # these make sure to ask new questions each loop
            question_symbol = "q#{i}".to_sym
            play = ask_question(question_symbol)
            return play if play == false
        end

        update_chg_total_exp()

    end



    # 
    def ask_question(question_symbol)
        display_header_mini()
        display_header_msg_under_mini(@message)
        question = @questions[question_symbol] # => this is the object with answers in them
        # create prompt
        # get the answer to the question
        # display question and possible solutions
        prompt = TTY::Prompt.new
        ans = get_ans(question_symbol)
        user_resp = prompt.select(question["Question"]) do |q|
             q.help '(Remember: You only get one shot at it!)'
             q.choice question.keys[0], question.values[0]
             q.choice question.keys[1], question.values[1]
             q.choice question.keys[2], question.values[2]
             q.choice question.keys[3], question.values[3]
             q.choice question.keys[4], question.values[4]
             q.choice question.keys[5], question.values[5]
        end

        # handle the users answer
        # when they dont know answer and just want the answer, no exp is awarded
            # when player wants help, trigger help function
        case user_resp

        when "give"
            #too hard, player gives up to exit the game
            return give_up()

        when "dont"
            @message = "The answer was #{ans}. No exp was awarded"

        when "ask"
            # call help function
            # this will return either an exp increase, or the hint from the question
            help = ask_for_help(question)

            # this will send false out to stop the 'play' variable in start_challenge() to stop the game
            return false if help == false

            # check what was returned
            # either display the message and restart the question
            # or add their exp
            exp = Integer(help) rescue nil
            if exp == nil
                #this will set the message var to display again when the question gets asked again
                # because they didn't figure it out for themselves
                @message = "My hint for you: '#{help}'"
            else
                # otherwise they figured it with google and want to re-attempt the question
                # they also get 1 point for doing the extra work themselves
                # I think I will make this more points though
                @help_exp += help
            end
            puts
            puts "Ok we're going to give you another go and your hint will display at the top"
            puts "Press any key to continue"
            gets 

            ask_question(question_symbol)

        when ans
            # if their answer is correct
            @message = "Great work! Your answer was correct"
            @correct_ans_exp += 7

        else
            # their answer was incorrect
            @message = "That was incorrect sorry. The answer was #{ans}\nNo exp was awarded"
        end
    end



    def ask_for_help(question)

        # give them time to go and google a solution
        puts
        puts "Ok try Googling it so you can find out how to solve it. I'll wait"
        puts "Press any key when you're ready to continue"
        gets 

        # give them time to go and google a solution
        prompt = TTY::Prompt.new
        google = prompt.select('Did you find out how to solve it by Googling it?') do |menu|
            menu.choice "yes", 'yes'
            menu.choice "no    (You're lucky this time, I will give you a hint)", 'no'
            menu.choice "I give up. I don't know how to solve it", lambda {give_up()}
        end

        # this is the EXP they get if they managed to find the solution on google
        return false if google == false
        # this will return a string that is set into @message to display at top for next loop
        return give_hint(question) if google == 'no'
        # this is the EXP they get if they managed to find the solution on google
        return 1 if google == 'yes'
    end

    # this accesses the hint in the question
    def give_hint(question)
        question["Hint"]
    end


end





