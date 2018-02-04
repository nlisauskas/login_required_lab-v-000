class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name] = ""
      redirect_to '/login'
    end
  end
end
