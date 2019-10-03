class SecretsController < ApplicationController 

    before_action :require_login

    def show 
        #return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    end

end
