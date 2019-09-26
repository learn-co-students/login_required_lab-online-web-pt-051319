class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def homepage
    if current_user.nil?
      redirect_to login_url
    end
  end
  
  def current_user
    session[:name]
  end 

  def require_login
    redirect_to login_path unless session.include? :name
  end
end
