class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
    if session[:name] != @user.name
      redirect_to '/login'
    end
  end

  def require_login
    redirect_to '/login' unless session.include? :user_id
  end


end
