require_relative "PersonalBranding"
require_relative "CodingPractice"

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
    @@blogs = 0
    @@medium_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 15)
        super
        puts "Great work on your blog"
        @exp_increase = 10
        @@blogs += 1
    end

    def self.display_total_blogs()
        puts "Your total blogs = #{@@blogs}"
    end
end



class YouTube < PersonalBranding
    @@videos = 0
    @@youtube_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 30)
        super
        puts "Great work on your video"
        @exp_increase = 20
        @@videos += 1
    end

    def self.display_total_videos()
        puts "Your total videos = #{@@videos}"
    end
end



class Codewars < CodingPractice
    @@kyus = 0
    @@codewars_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 7)
        super
        puts "Great work on your Kyu"
        @exp_increase = 5
        @@kyus += 1
    end

    def self.display_total_kyus()
        puts "Your total kyus = #{@@kyus}"
    end
end



class HackerRank < CodingPractice
    @@rank = 0
    @@hackerrank_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 7)
        super
        puts "Great work on your rank"
        @exp_increase = 5
        @@rank += 1
    end

    def self.display_total_rank()
        puts "Your total rank = #{@@rank}"
    end
end



class Excercism < CodingPractice
    @@exercisms = 0
    @@exercism_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 7)
        super
        puts "Great work on your exercism"
        @exp_increase = 5
        @@exercises += 1
    end

    def self.display_total_exercisms()
        puts "Your total exercisms = #{@@exercisms}"
    end
end



class RegexCrossword < CodingPractice
    @@crosswords = 0
    @@regex_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 7)
        super
        puts "Great work on your crossword"
        @exp_increase = 5
        @@crosswords += 1
    end

    def self.display_total_crosswords()
        puts "Your total crosswords = #{@@crosswords}"
    end
end

class Hackathons < PersonalBranding 
    @@hackathons = 0
    @@hackathon_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 30)
        super
        puts "Great work on your teamwork"
        @exp_increase = 20
        @@hackathons += 1
    end

    def self.display_total_hackathons()
        puts "Your total hackathons = #{@@hackathons}"
    end
end

class Meetups < PersonalBranding
    @@meetups = 0
    @@meetup_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 20)
        super
        puts "Great work on your attendance"
        @exp_increase = 20
        @@meetups += 1
    end

    def self.display_total_meetups()
        puts "Your total meetups = #{@@meetups}"
    end
end
