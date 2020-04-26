# require 'test/unit'
# require 'tty-screen'

# require_relative '../classes/terminal'
# require_relative '../classes/game'
# require_relative '../modules/data'
# require_relative '../modules/functions'
# require_relative '../modules/ascii'

# class TerminalTest < Test::Unit::TestCase

#     def test_command_line_argument
    

#         exception = assert_raise("StandardError") { Terminal.new(["-abcdefg"]) }
#         assert_equal("Argument not recognized", exception.message)

#         terminal = Terminal.new(["-nc"])
#         assert_equal(["-nc"],terminal.argv,"Terminal raised an exception when passed a valid argument")

#         terminal = Terminal.new(["-d1"])
#         assert_equal(["-d1"],terminal.argv,"Terminal raised an exception when passed a valid argument")

#         terminal = Terminal.new(["-d4"])
#         assert_equal(["-d4"],terminal.argv,"Terminal raised an exception when passed a valid argument")

#         terminal = Terminal.new(["-d4","-nc"])
#         assert_equal(["-d4","-nc"],terminal.argv,"Terminal raised an exception when passed more than one valid argument")

#         exception = assert_raise("StandardError") { Terminal.new(["-d4","-nc","--help"]) }
#         assert_equal("Too many arguments provided", exception.message)

#     end

#     def test_rescue_statement
        
#         terminal = Terminal.new(["-crash"])
#         assert_equal(false,terminal.start)

#     end

# end

# class PhrasePromptTest < Test::Unit::TestCase
    
#     include DataModule

#     def test_phrase_select
#         phrases = phrase_select()
#         assert_equal(15, phrases.size)
#     end

#     def test_prompt_select

#         prompts = prompt_select(:d1)
#         assert_equal(5, prompts.size)

#         prompts = prompt_select(:d2)
#         assert_equal(5, prompts.size)

#         prompts = prompt_select(:d3)
#         assert_equal(5, prompts.size)

#         prompts = prompt_select(:d4)
#         assert_equal(5, prompts.size)
        
#     end

# end