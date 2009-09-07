# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  before_filter { |page| page.set_selected_nav_tab :blog }
  
  def set_selected_nav_tab(tabname)
    @selected_tab = tabname
  end
  
  def admin_required
    admin_signed_in?
  end
  
  def admin_signed_in?
    #session['admin']
  end
  helper_method :admin?
  
  
protected

  
  def admin?
    session['admin']
  end

  def set_admin
    session['admin'] = 'junk-value'
  end

  def unset_admin
    reset_session
  end

  def authenticated
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['PB_USERNAME'] && password == ENV['PB_PASSWORD']
    end
  end
  
end
