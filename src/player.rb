# class Player

#     attr_reader :name
#     attr_accessor :exp

#     def initialize name, exp
#         @name = name
#         @exp = exp
#     end
# end
"What would you say your experience level?"

require 'tty-prompt'


def get_player_info()
    prompt = TTY::Prompt.new
    
    exp_levels = {
        'Master' => 100,
        'Advanced' => 20,
        'Beginner' => 5,
        'Noob' => 0,
    }

    puts "Before we start, what is your coder name?"
    print "=> "; user_name = gets.strip
    puts ""
    puts "Hello there #{user_name}"
    puts ""
    user_exp = prompt.select("Choose your destiny?", exp_levels)

    return player = {name: user_name, exp: user_exp}
end