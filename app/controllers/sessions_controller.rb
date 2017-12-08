class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil?
      redirect_to :new
    else
      session[:name] = params[:name]

  end

  def destroy
  end

end
