class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
      redirect_to "/new"
    else
      redirect_to "/"
    end
  end

end
