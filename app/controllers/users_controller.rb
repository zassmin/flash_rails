class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path
    else
      flash[:error] = "please try again"
      render 'new'
    end
  end
end
