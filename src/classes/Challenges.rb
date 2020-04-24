require 'tty-spinner'
require 'tty-prompt'
require 'faker'
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
        @message = "You only get one try per question, so take your time".colorize(:light_green)
    end


    def update_chg_total_exp()
        @total_exp += @help_exp + @persistence_exp + @correct_ans_exp
    end


    def get_ans(question_symbol)
        return @questions[question_symbol]["Answer"]
    end


    def start_challenge(challenge_no)
 
        display_header_mini()
        display_header_msg_under_mini(@message)
        puts "You're about to start challenge ##{challenge_no}!"
        press_any_key()
        spinner = TTY::Spinner.new("[:spinner] An educator is checking your answer...", format: :dots)

        # run a loop 3 times 
        # if player attempts 3 questions
        # they get bonus points for persistence and practice
        # get random question from pool (q is a symbol here)
        # stop loop if player wants to quit / give up
        # remove question from pool and push into answered variable
        # show a loading image when computer is checking their answer

        for i in 1..3
            display_header_mini()
            display_header_msg_under_mini(@message)
            @persistence_exp += 10 if i == 3
            q = @questions.keys.sample
            puts
            return false if ask_question(q) == false
            $game.move_used_question_to_answered(q)
            spinner.auto_spin
            sleep(2)
            spinner.stop
        end

        # if player wants to help out
        # give extra 10 EXP for helping
        # otherwise move on

        exp_from_helping = does_player_want_to_offer_help(challenge_no)
        if exp_from_helping == 'yes'
            display_countdown_timer(20, ("Thank you for donating your time to help out others").colorize(:light_green), "Great work #{$player.name}. You just helped #{Faker::Name.name} complete the challenge as well", 10)
            @help_exp += 10
        end 

        update_chg_total_exp()
    end # of start challenge



    def ask_question(question_symbol)

        # get question object from pool of questions (with the symbol passed in)
        # get the answer to the question before it is shown
        # display MCQ to player (Hide hint, question and answer from player by only selecting relevant key/value pairs)
        prompt = TTY::Prompt.new
        display_header_mini()
        display_header_msg_under_mini(@message)
        question = @questions[question_symbol]
        ans = get_ans(question_symbol)
        user_resp = prompt.select(question["Question"]) do |q|
             q.help 'Remember: You only get one shot!'
             q.choice question.keys[0], question.values[0]
             q.choice question.keys[1], question.values[1]
             q.choice question.keys[2], question.values[2]
             q.choice question.keys[3], question.values[3]
             q.choice question.keys[4], question.values[4]
             q.choice question.keys[5], question.values[5]
        end

        # handle the users answer
        # return false if player gives up in question
        # when they dont know answer and just want the answer, no exp is awarded
        # when player wants help, trigger help function
        # if their answer is correct show a nice message
        # other their answer was incorrect
        case user_resp

        when "give"
            return give_up()

        when "dont"
            @message = "The answer was #{ans}\nNo exp was awarded".colorize(:light_red)

        when "ask"
            help = ask_for_help(question) # returns either exp increase, hint from the question, or they gave up
            return false if help == false

            # check if help var is an integer or a string
            # add their exp if help is an integer
            # else display the hint
            # re-ask the question again so they can answer it with hint or their own solution
            exp = Integer(help) rescue nil
            display_header_mini()
            display_header_msg_under_mini(@message)
            if exp != nil
                @help_exp += help 
                puts "Fantastic work on sourcing your own solution\n"
                puts "You just earnt an extra #{help} EXP for doing so"
            end
            (puts "Ok here is your hint:\n#{help}") if exp == nil
            press_any_key()
            ask_question(question_symbol)

        when ans
            @message = "Educator: #{Faker::Name.name}\n\"Great work #{$player.name}! Your answer was correct\"".colorize(:light_green)
            @correct_ans_exp += 7

        else
            @message = "Unfortunately your last answer was incorrect\nThe correct answer was:  #{ans}\nNo exp was awarded".colorize(:light_red)
        end
    end



    def ask_for_help(question)
        prompt = TTY::Prompt.new

        # give them time to go and google a solution
        puts
        puts "Ok go Google it to find your solution. We'll wait"
        press_any_key()

        system "clear"
        display_header_mini()
        display_header_msg_under_mini(@message)
        google = prompt.select('Did you find out how to solve it by Googling it?') do |menu|
            menu.help " "
            menu.choice "Yes, feeling great", 'yes'
            menu.choice "No, I need a hint", 'no'
            menu.choice "I give up", lambda {give_up()}
        end

        # exit help function if user gives
        # return the hint if they choose
        # otherwise give them 1 EXP for solving the question themselves
        return false if google == false
        return give_hint(question) if google == 'no'
        return 2 if google == 'yes'
    end


    # get the hint from the question
    def give_hint(question)
        question["Hint"]
    end

end # of Challenge class

