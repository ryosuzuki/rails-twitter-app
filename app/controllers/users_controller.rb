class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(username: params[:id])
    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
    end
    @client = Twitter::Client.new(oauth_token: @user.token, oauth_token_secret: @user.secret)
    @tweets = @client.user_timeline(@user.uid)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    def user_params
      params[:user]
    end

end
