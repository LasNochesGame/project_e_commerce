class HomeController < ApplicationController
    layout 'application_home'

    def welcome
        @shops = Shop.all
    end
end