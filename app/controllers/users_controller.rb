class UsersController < ApplicationController

    def new
      @user = User.new
      render ''
    end

    def create
      @user = User.new(user_name: params[:user_name], email: params[:email])
      @user.password = params[:password]
      @user.save
      p start_session(@user)
      redirect '/user_dashboard'
    end

end
