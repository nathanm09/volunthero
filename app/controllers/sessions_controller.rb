class SessionsController < ApplicationController
    # Added for login/logout functionality

  def vheronew
    # No need for anything in here, we are just going to render our
    # new.html.erb AKA the login page
  end
    
  def vorgnew

  end

  def vherocreate
    # Look up User in db by the email address submitted to the login form and
    # convert to lowercase to match email in db in case they had caps lock on:
  
    vhero = Vhero.find_by(email: params[:vherologin][:email].downcase)
    
    # Verify user exists in db and run has_secure_password's .authenticate() 
    # method to see if the password submitted on the login form was correct: 
    if vhero && vhero.authenticate(params[:vherologin][:password]) 
      # Save the user.id in that user's session cookie:
      session[:vheroid] = vhero.id.to_s
      redirect_to vhero#show, notice: 'Successfully logged in!'
    else
      # if email or password incorrect, re-render login page:
      flash.now.alert = "Incorrect email or password, try again."
      render :vheronew
    end
  end
  
  def vorgcreate
    # Look up User in db by the email address submitted to the login form and
    # convert to lowercase to match email in db in case they had caps lock on:
  
    vorganization = Vorganization.find_by(email: params[:vorglogin][:email].downcase)
    
    # Verify user exists in db and run has_secure_password's .authenticate() 
    # method to see if the password submitted on the login form was correct: 
    if vorganization && vorganization.authenticate(params[:vorglogin][:password]) 
      # Save the user.id in that user's session cookie:
      session[:vorgid] = vorganization.id.to_s
      redirect_to vorganization#show, notice: 'Successfully logged in!'
    else
      # if email or password incorrect, re-render login page:
      flash.now.alert = "Incorrect email or password, try again."
      render :vorgnew
    end
  end

  def vherodestroy
    # delete the saved user_id key/value from the cookie:
    session.delete(:vheroid)
    redirect_to home_index_url, notice: "Logged out!"
  end

  def vorgdestroy
    # delete the saved vorg_id key/value from the cookie:
    session.delete(:vorgid)
    redirect_to home_index_url, notice: "Logged out!"
  end    
  
    # ----- end of login/logout functionality-----
end
