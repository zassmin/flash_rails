class SessionsController < ApplicationController

  def new
    @user = User.new

    render :index
  end

  def create
    @user = User.new(user_name: params[:user_name], email: params[:email])
    @user.password = params[:password]
    @user.save
  end

  def destroy
  end
end
