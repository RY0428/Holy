class MainController < ApplicationController
    def index 
        @tweets = Tweet.all
    end

    def link
    end
    
end
