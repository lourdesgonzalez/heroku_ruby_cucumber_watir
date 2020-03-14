class HomePage

    def initialize(browser)
    @driver= browser
    end 

    def link(text)
    @driver.a(text: text)
    end
end 
