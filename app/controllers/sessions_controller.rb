class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to :new
    else
      session[:name] = params[:name]
      
  end

  def destroy
  end

end
