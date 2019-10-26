class SessionsController < ApplicationController

	def create
		if params[:name].present?
			session[:name] = params[:name]
			redirect_to root_path
		else
			redirect_to login_path
		end
	end

	def destroy
		current_user && session.delete(:name)
	end

end
