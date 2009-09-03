# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(str, container = nil)
    @page_title = "#{APP_CONFIG['title']} - #{str}" if str
    content_tag(container, str) if container
  end
  
  def show_title?
    @show_title
  end
  
  def selected_tab?(tabname)
    (tabname == @selected_tab) ? 'active' : ''
  end
  
end
