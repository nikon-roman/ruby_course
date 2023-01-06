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
            @@path << @current_url
        end
    end
    
    def to_s
        "*----------*\n home: #{ HOME_URL }\n current url: #{ @current_url }\n history: #{ @@path }\n*----------*"
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
end

a1 = Site.new
a1.go_to("url1")
a1.go_to("url2")
puts a1
a2 = Site.new
a2.go_to("url1")
puts a2
puts a1 < a2
puts a1 > a2
puts a1 == a2
puts a1 != a2