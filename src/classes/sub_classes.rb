require_relative "PersonalBranding"
require_relative "CodingPractice"

require 'colorize'


class Twitter < PersonalBranding
    @@tweets = 0
    @@twitter_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 5, header_msg = ("Generating your interesting Tweet takes some time").colorize(:light_green), time_up_message = "twitter", exp_increase = 5)
        super
        @exp_increase = exp_increase
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

    def initialize(countdown = 15, header_msg = ("Writing a blog doesn't happen immediately\nTakes time to craft a meaningful entry").colorize(:light_green), time_up_message = "medium", exp_increase = 10)
        super
        @exp_increase = exp_increase
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

    def initialize(countdown = 20, header_msg = ("Off editing your next coding video").colorize(:light_green), time_up_message = "youtube", exp_increase = 20)
        super
        @exp_increase = exp_increase
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

    def initialize(countdown = 7, header_msg = ("Not all Kyu's are as easy as they look\nYou're taking some time to ask someone for help").colorize(:light_green), time_up_message = "codewars", exp_increase = 5)
        super
        @exp_increase = exp_increase
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

    def initialize(countdown = 7, header_msg = ("Prepping for those interview questions\nLots of them, better take the time to practice").colorize(:light_green), time_up_message = "hackerrank", exp_increase = 5)
        super
        @exp_increase = exp_increase
        @@rank += 1
    end

    def self.display_total_rank()
        puts "Your total rank = #{@@rank}"
    end
end



# class Excercism < CodingPractice
#     @@exercisms = 0
#     @@exercism_exp_earned = 0

#     attr_accessor :exp_increase

#     def initialize(countdown = 7, header_msg = "Generating your interesting Tweet takes some time", time_up_message = "exercism", exp_increase = 5)
#         super
#         @exp_increase = exp_increase
#         @@exercises += 1
#     end

#     def self.display_total_exercisms()
#         puts "Your total exercisms = #{@@exercisms}"
#     end
# end



class RegexCrossword < CodingPractice
    @@crosswords = 0
    @@regex_exp_earned = 0

    attr_accessor :exp_increase

    def initialize(countdown = 10, header_msg = ("What the heck is that Regex, better go research it").colorize(:light_green), time_up_message = "regex", exp_increase = 5)
        super
        @exp_increase = exp_increase
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

    def initialize(countdown = 30, header_msg = ("Here you only have to wait 30 seconds to get experience").colorize(:light_green), time_up_message = "hackathons", exp_increase = 20)
        super
        @exp_increase = exp_increase
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

    def initialize(countdown = 30, header_msg = ("Making new connections at your Meetup").colorize(:light_green), time_up_message = "meetups", exp_increase = 20)
        super
        @exp_increase = exp_increase
        @@meetups += 1
    end

    def self.display_total_meetups()
        puts "Your total meetups = #{@@meetups}"
    end
end
