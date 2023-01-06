class Site

    HOME_URL = "https://www.home.com"
    
    attr_reader :current_url
    
    @@path = []
    
    def initialize(current_url = HOME_URL)
        @current_url = current_url
        @@path << HOME_URL
    end
    
    def go_to(current_url)
        unless @current_url == "#{ HOME_URL }/#{ current_url }"
            @current_url = "#{ HOME_URL }/#{ current_url }"
            @@path << Site.correct(@current_url)
        end
    end
    
    def to_s
        "*----------*\n home: #{ HOME_URL }\n current url: #{ Site.correct(@current_url) }\n history: #{ @@path }\n*----------*"
    end
    
    def <(other)
        @current_url.to_s > other.current_url.to_s
    end

    def >(other)
        @current_url.to_s < other.current_url.to_s
    end

    def ==(other)
        @current_url.to_s == other.current_url.to_s
    end

    def !=(other)
        @current_url.to_s != other.current_url.to_s
    end

    private
    def self.correct(str)
        str.gsub(" ", "%20")
    end
end

a1 = Site.new
a1.go_to("first")
a2 = Site.new
a2.go_to("second")
a1.go_to("first 1")
a1.go_to("first 2")
a1.go_to("first 2")
puts a1