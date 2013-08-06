class SessionsController < ApplicationController

  def new
    @user = User.new

    render :index
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    @user.password = params[:password]
    @user.save
  end

  def destroy
  end
end
