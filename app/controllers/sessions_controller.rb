class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def show
  end

  def destroy
    session.clear
  end
end
