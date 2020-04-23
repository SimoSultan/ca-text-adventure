require_relative "ExtraActivities"

class CodingPractice < ExtraActivities

    @@total_practices = 0
    @@total_exp_practice = 0
    
    def initialize(countdown, header_message, time_up_message, exp)
        super
        display_header_mini()
        display_header_msg_under_mini("Great work! You just increased your coding skills #{$player.name}")
        @@total_practices += 1
    end

    def self.display_total_practices()
        puts "Your total practices = #{@@total_practices}"
    end

end