class ApplicationController < ActionController::Base
    
  # ----- Start current user functionality -----

  # Make the current_user method available to views also, not just controllers:
  helper_method :current_user
  
  # Define the current_user method:
  def current_user
    # Look up the current user based on user_id in the session cookie:
    @current_user ||= Vhero.find(session[:id]) if session[:id]
  end
  # ----- End current user functionality -----
    
  # ----- Start authorize user -----

    # authroize method redirects user to login page if not logged in:
    def authorize
      redirect_to login_path, alert: 'You must be logged in to access this page.' if current_user.nil?
    end
  # ----- End authorize user -----
end
