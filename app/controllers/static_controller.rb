class StaticController < ApplicationController
  before_action :usermood
  
  # def welcome
  #   @user = User.find(session[:user_id])
  #   # byebug
  #   # @welcome = render :welcome, notice: "Invalid email/password combination"
  # end

  def usermood
    @usermood = UserMood.new
  end 

end
