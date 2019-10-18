class SecretsController < ApplicationController
  before_action :require_logged_in

  def show
    # return head(:forbidden) unless session.include? :user_id
    # @secret = Secret.find(params[:id])
  end
end
