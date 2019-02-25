class ApplicationController < ActionController::Base
  # ----- Start current user functionality -----

  # Make the current_user method available to views also, not just controllers:
  helper_method :current_vhero
  helper_method :current_vorg
  
  # Define the current user methods:
  def current_vhero
    # Look up the current hero based on user_id in the session cookie:
    @current_vhero ||= Vhero.find(session[:vheroid]) if session[:vheroid]
  end
    
  def current_vorg
    # Look up the current org based on user_id in the session cookie:
    @current_vorg ||= Vorganization.find(session[:vorgid]) if session[:vorgid]
  end
  # ----- End current user functionality -----
    
  # ----- Start authorize user -----

    # authroize method redirects user to login page if not logged in:
    def vheroauthorize
      redirect_to vherologin_path, alert: 'You must be logged in as a Volunthero to access this page.' if current_vhero.nil?
    end
    
    def vorgauthorize
      redirect_to vorglogin_path, alert: 'You must be logged in as an Organization to access this page.' if current_vorg.nil?
    end
  # ----- End authorize user -----
end
