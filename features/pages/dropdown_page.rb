class DropdownPage

    def initialize(browser)
        @driver= browser
    end 

    def dropdown
        @driver.select(id: 'dropdown')
    end

    def option(index)
        dropdown.option(index: index)
    end
end 