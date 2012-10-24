class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  #re-write this later
  rescue_from CanCan::AccessDenied do |exception| 
    redirect_to new_user_session_path, :alert => exception.message
  end
end
