class TopController < ApplicationController
  def main
    if session[:login_uid]
      redirect_to tweets_path
    else
      render 'login'
    end
  end

  def login
    user = User.find_by(uid: params[:uid])
    if user
      session[:login_uid] = user.uid
      redirect_to tweets_path
    else
      render 'login'
    end
  end

  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end