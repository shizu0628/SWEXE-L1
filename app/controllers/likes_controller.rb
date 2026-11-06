class LikesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    user = User.find_by(uid: session[:login_uid])
    user.likes.create(tweet_id: tweet.id)
    redirect_to tweets_path
  end

  def destroy
    tweet = Tweet.find(params[:tweet_id])
    user = User.find_by(uid: session[:login_uid])
    like = user.likes.find_by(tweet_id: tweet.id)
    like.destroy if like
    redirect_to tweets_path
  end
end