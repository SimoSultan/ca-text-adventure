require 'tty-prompt'

require_relative 'view'
require_relative 'services'
require_relative '../classes/CodingPractice'
require_relative '../classes/ExtraActivities'
require_relative '../classes/Hurdles'
require_relative '../classes/PersonalBranding'
require_relative '../classes/sub-classes'


def main()

    quit = false
    $exp = 0

    until quit
        intro()

        if $exp >= 80
            puts "Great you are skilled enough. Now go apply for a job!"
            return quit = true
        else
            player = get_player_info() 
            $exp = player[:exp]
        end
        
        puts "Did you complete the challenges? y/n"
        print "=> "; chgs = gets.strip.downcase[0]

        if chgs == "n"
            puts "Go and do the challenges!"
            return quit = true
        else
            $exp += 50
        end

        puts "Did you complete the assignments? y/n"
        print "=> "; assigns = gets.strip.downcase[0]

        if assigns == "n"
            puts "Go and do the assignments!"
            return quit = true
        else
            $exp += 50
        end

    end

end


main()
