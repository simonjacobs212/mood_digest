class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :login, :please_login]

  def index
    @users = User.all 
  end

  def show
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to new_users_path
    end
  end

  def login
  end

  def please_login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password]) && @user.valid?
      # byebug
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_user_path, notice: "Invalid Username and/or Password. Please try again."
      # byebug
    end
  end

  def logout
    session[:user_id] = nil 
    redirect_to login_user_path
  end 

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password)
  end
  
end
