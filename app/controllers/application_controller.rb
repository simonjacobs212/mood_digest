class ApplicationController < ActionController::Base
    helper_method :user_logged_in?, :current_user
    before_action :authorized

    def current_user
        # byebug
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def user_logged_in?
        # byebug
        !@current_user.nil?
    end 

    def authorized
        # byebug
        redirect_to login_user_path unless current_user && user_logged_in?
    end 


end
