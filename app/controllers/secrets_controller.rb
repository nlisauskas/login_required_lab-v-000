class SecretsController < ApplicationController
  before_action :require_login

  def show
    if session[:name] == "" || session[:name].nil?
      redirect_to '/login'
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end


end
