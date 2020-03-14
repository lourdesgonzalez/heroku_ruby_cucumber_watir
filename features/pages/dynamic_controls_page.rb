class DynamicControlsPage
    def initialize(browser)
        @driver= browser
    end 

    def button
        @browser.button(text:'Enable') 
    end 

    def message(text)
        @browser.input(index: 1)
    end 

    def button
        @driver.button(text: 'Disable').click
    end  
end 



    



