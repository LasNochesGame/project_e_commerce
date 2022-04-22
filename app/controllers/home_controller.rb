class HomeController < ApplicationController
    def welcome
        @shops = Shop.all
    end
end