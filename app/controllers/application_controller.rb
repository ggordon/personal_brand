# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter { |page| page.set_selected_nav_tab :blog }
  
  def set_selected_nav_tab(tabname)
    @selected_tab = tabname
  end
  
  def admin_required
    unless admin? 
      flash[:error] = "Only an admin is required to acces that."
      redirect_to signin_path
      return false
    end
  end
  
  helper_method :admin?
  
  
protected

  
  def admin?
    session['admin']
  end

  def set_admin
    session['admin'] = 'authenticated'
  end

  def unset_admin
    reset_session
  end


  
end
