require_relative "ExtraActivities"
require_relative "../modules/view"
include View

class PersonalBranding < ExtraActivities

    @@total_brandings = 0
    @@total_exp_branding = 0
    
    def initialize(countdown, header_message, time_up_message, exp)
        super
        display_header_mini()
        display_header_msg_under_mini("Great work! You just increased you personal branding #{$player.name}")
        @@total_brandings += 1
    end

    def self.display_total_brandings()
        puts "Your total brandings = #{@@total_brandings}"
    end
end