class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
    if session[:name] != @user.name
      redirect_to '/login'
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end


end
