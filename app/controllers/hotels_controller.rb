class HotelsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def link
    end

    def hotels
        @tweets = Tweet.all
    end 
end
