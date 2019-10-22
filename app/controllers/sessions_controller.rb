class SessionsController < ApplicationController

  def new
  end 

  def create 
    unless params[:name] == nil || params[:name] == ""
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to login_path
    end
  end 

  def destroy 
    session.delete :name 
    redirect_to login_path
  end 

end 