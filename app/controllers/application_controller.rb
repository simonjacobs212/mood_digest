class ApplicationController < ActionController::Base
    helper_method :user_logged_in?, :current_user, :greeting
    before_action :authorized, :greeting

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
    def greeting
        now = Time.now
        today = Date.today.to_time
      
        morning = today.beginning_of_day
        noon = today.noon
        evening = today.change( hour: 17 )
        night = today.change( hour: 20 )
        tomorrow = today.tomorrow
      
        if (morning..noon).cover? now
          @greeting = 'Good Morning'
        elsif (noon..evening).cover? now
          @greeting = 'Good Afternoon'
        elsif (evening..night).cover? now
          @greeting = 'Good Evening'
        elsif (night..tomorrow).cover? now
          @greeting = 'Good Night'
        end
      end


end
