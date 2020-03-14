class FormAuthenticationPage
    
    def initialize(browser)
        @driver= browser
    end

    def username(text)
        @browser.input(id: 'username')
    end 

    def password(text)
        @browser.input(id: 'password')
    end 

    def button
        @driver.button(class: 'radius')
    end

end
