class TopController < ApplicationController
  def main
    if session[:login_uid]
      render :main
    else
      render :login
    end
  end

  def login
    if params[:uid] == "kindai" && params[:pass] == "sanriko"
      session[:login_uid] = params[:uid]
      redirect_to top_main_path
    else
      render :error
    end
  end
end