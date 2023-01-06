class Site

    HOME_URL = "https://www.home.com"
    
    attr_accessor :current_url
    
    def initialize(current_url = HOME_URL)
        @current_url = current_url
    end
    
    def go_to(current_url)
        unless @current_url == "#{ HOME_URL }/#{ current_url }"
            @current_url = "#{ HOME_URL }/#{ current_url }"
        end
    end
    
    def to_s
        "*----------*\n home: #{ HOME_URL }\n current url: #{ @current_url }\n*----------*"
    end
end

a1 = Site.new
a1.go_to("url1")
a1.go_to("url2")
puts a1
p a1.go_to("url2")