class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the sample app."
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
  end

end
