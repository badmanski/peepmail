class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user] = params[:user]
    redirect_to root_path
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end
