require_relative "ExtraActivities"

class CodingPractice < ExtraActivities

    @@total_practices = 0
    @@total_exp_practice = 0
    
    def initialize(countdown)
        super
        puts "Great work. You just increased your coding skills"
        @@total_practices += 1
    end

    def self.display_total_practices()
        puts "Your total practices = #{@@total_practices}"
    end

end