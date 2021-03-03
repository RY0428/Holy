class TweetsController < ApplicationController
    
  def index
    if params[:search] == nil
      @tweets= Tweet.all
    elsif params[:search] == ''
      @tweets= Tweet.all
    else
     @tweets = Tweet.where("body LIKE ? ",'%' + params[:search] + '%')
    end
  end

    
   def new
      @tweet = Tweet.new
   end


  def create
     tweet = Tweet.new(tweet_params)

     tweet.user_id = current_user.id
     
      if tweet.save
         redirect_to controller: :main, action: :index
     else
         redirect_to :action => "new"
       end
  end


  def show
      @tweet = Tweet.find(params[:id])
    end


  def edit
      @tweet = Tweet.find(params[:id])
  end


  def update
     tweet = Tweet.find(params[:id])
       if tweet.update(tweet_params)
          redirect_to :action => "show", :id => tweet.id
      else
         redirect_to :action => "new"
       end
  end


  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to controller: :main, action: :index
  end


  private
  def tweet_params
      params.require(:tweet).permit(:body,:category, :image, :video)
  end

  before_action :authenticate_user!


 def hotels
  @tweets = Tweet.all
 end 

 def restaurants
  @tweets = Tweet.all
 end

 def spots
  @tweets = Tweet.all
 end


end
