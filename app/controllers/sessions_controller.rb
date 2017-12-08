class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to :new
    else
      session[:name] = params[:name]
      redirect_to "/"
  end

  def destroy
  end

end
