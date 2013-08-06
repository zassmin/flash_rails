class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(email: params[:user][:email])
    @user.password = params[:user][:password]
    @user.save
  end
end
