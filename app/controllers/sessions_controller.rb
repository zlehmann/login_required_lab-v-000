class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/new'
    else
      session[:name] = params[:name]
      @name = session[:name]
      redirect_to '/show'
    end
  end

  def destroy
      if !session[:name].nil?
        session[:name]
      else
        session.delete :name
      end
      redirect_to '/'
  end

end
