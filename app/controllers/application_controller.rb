class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private

   # Before filters

    # Confirms a logged-in user.
    def logged_in_user
    	unless logged_in?
    		flash[:danger] = "Please log in."
    		redirect_to login_url
    	end
    end

    # Confirms the correct user.
    def correct_user
    	@user = User.find(params[:id])
    	redirect_to current_user unless current_user?(@user) 
    end

    #Allert for non authorized action
    def user_not_authorized
    	flash[:alert] = "You are not authorized to perform this action."
    	redirect_to(request.referrer || root_path)
    end
end
