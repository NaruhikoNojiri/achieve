class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @followed_users = @user.followed_user
    @followers = @user.followers
  end
end
