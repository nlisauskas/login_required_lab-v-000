class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end


end
