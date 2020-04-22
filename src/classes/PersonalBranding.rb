require_relative "ExtraActivities"

class PersonalBranding < ExtraActivities

    @@total_brandings = 0
    @@tota_exp_branding = 0
    
    def initialize(countdown)
        super
        puts "Great work! You just increase you personal branding"
        @@total_brandings += 1
    end

    def self.display_total_brandings()
        puts "Your total brandings = #{@@total_brandings}"
    end
end