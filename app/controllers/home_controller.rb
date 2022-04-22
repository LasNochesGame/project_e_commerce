class HomeController < ApplicationController
    layout 'main_layout'
    def welcome
        @shops = Shop.all
    end
end