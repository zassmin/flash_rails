class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      p "inside the save"
      session[:user_id] = @user.id
      # redirect_to "/users/#{@user.id}"
      redirect_to user_path(@user)
    else
      flash[:error] = "please try again"
      render 'new'
    end
  end

  def show
  end
end
