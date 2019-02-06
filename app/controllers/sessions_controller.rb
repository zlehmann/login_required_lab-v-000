class SessionsController < ApplicationController
  before_action :require_login
  def new

  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def require_login
    redirect_to '/new' unless session.include? :name
  end
end
