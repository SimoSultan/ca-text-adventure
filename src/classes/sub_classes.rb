require_relative "PersonalBranding"
require_relative "CodingPractice"

class Twitter < PersonalBranding < ExtraActivities
    def initialize()
        super
    end
end

class Medium < PersonalBranding < ExtraActivities
    def initialize()
    end
end

class YouTube < PersonalBranding < ExtraActivities
    def initialize()
    end
end

class Codewars < CodingPractice < ExtraActivities
    def initialize()
    end
end

class HackerRank < CodingPractice < ExtraActivities
    def initialize()
    end
end

class Excercism < CodingPractice < ExtraActivities
    def initialize()
    end
end

class RegexCrossword < CodingPractice < ExtraActivities
    def initialize()
    end
end

class Hackathons < PersonalBranding < ExtraActivities
    def initialize()
    end
end

class Meetups < PersonalBranding < ExtraActivities
    def initialize()
    end
end

z