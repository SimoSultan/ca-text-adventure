require_relative "../modules/view"
include View

class ExtraActivities

    @@total_activities = 0
    @@total_exp_activities = 0
    
    def initialize(countdown, header_message, time_up_message, exp)
        # @countdown_time = countdown
        display_countdown_timer(countdown, header_message, time_up_message, exp)
        # puts "Great work on doing an extra activity"
        @@total_activities += 1
    end

    def self.display_total_activities()
        puts "Your total activities = #{@@total_activities}"
    end


end