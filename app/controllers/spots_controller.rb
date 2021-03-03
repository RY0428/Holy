class SpotsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def link
    end

    def spots
        @tweets = Tweet.all
    end 
end
