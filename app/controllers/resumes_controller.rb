class ResumesController < ApplicationController
  before_filter { |page| page.set_selected_nav_tab :resume }
  
  def show
    @resume ||= Resume.first || Resume.create(:name => "default", :job_title => "President")
  end
end
