class LikesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_tweet

  def create
  end

  private

  def set_tweet
  	@tweet = Tweet.find(params[:tweet_id])
  end
end
