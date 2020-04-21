require_relative "PersonalBranding"
require_relative "CodingPractice"
require_relative "Player"

class Twitter < PersonalBranding
    @@tweets = 0
    @@twitter_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 5)
        super
        puts "Great work on tweeting"
        @exp_increase = 5
        @@tweets += 1
    end

    def self.display_total_tweets()
        puts "Your total tweets = #{@@tweets}"
    end
end

class Medium < PersonalBranding
    def initialize()
    end
end

class YouTube < PersonalBranding
    def initialize()
    end
end

class Codewars < CodingPractice
    def initialize()
    end
end

class HackerRank < CodingPractice
    def initialize()
    end
end

class Excercism < CodingPractice
    def initialize()
    end
end

class RegexCrossword < CodingPractice
    def initialize()
    end
end

class Hackathons < PersonalBranding 
    def initialize()
    end
end

class Meetups < PersonalBranding
    def initialize()
    end
end



# tweet = Twitter.new()
# tweet2 = Twitter.new()

# Twitter.display_total_tweets()
# PersonalBranding.display_total_brandings()
# ExtraActivities.display_total_activities()