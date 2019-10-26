class SecretsController < ApplicationController
  before_action :require_login

  def index
  end 

  

  def show 
  end 

  def require_login
    if !session.include? :name
      redirect_to login_path
    end
  end
end
