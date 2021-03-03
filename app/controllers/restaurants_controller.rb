class RestaurantsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def link
    end

    def restaurants
        @tweets = Tweet.all
    end 
end
