class SessionsController < ApplicationController

  def new
  end

  def create
    auth = env['omniauth.auth']
    @user = User.oauth(auth)
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
end
