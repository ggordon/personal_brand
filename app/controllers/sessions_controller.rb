class SessionsController < ApplicationController
  
  def new
  end
    
  def create
    if (params['username'] == ENV['PB_USERNAME'] && params['password'] == ENV['PB_PASSWORD'])
      set_admin
      flash[:notice] = "Successfully signed in as admin."
      redirect_to root_url
    else
      flash[:notice] = "Bad username or password."          
      redirect_to signin_path
    end
  end
  
  def destroy
    unset_admin
    flash[:notice] = "Successfully signed out as admin."
    redirect_to root_url
  end
  
end
