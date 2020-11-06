class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :dashboard]
  def new
  end

  def login
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/dashboard'
    else
      redirect_to '/login'
    end
  end

  def page_requires_login
  end
end
