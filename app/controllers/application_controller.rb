class ApplicationController < ActionController::Base
    
    before_action :authenticate_user! 
    
    private
  
    # def authenticate_user!
    #     return if user_signed_in?
    
    #     # We need this hack for handling redirection after success tenant registration
    #     flash[:notice] = params[:flash_notice] if params[:flash_notice].present?
    #     redirect_to new_user_session_path
    #   end

end
