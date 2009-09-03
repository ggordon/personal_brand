class PagesController < ApplicationController

  def show
    if params[:id] == "about"
      set_selected_nav_tab :about
    elsif params[:id] == "contact"
      set_selected_nav_tab :contact      
    end
      
    if %w(about contact).include?(params[:id])
      render "pages/show/#{params[:id]}"
    else
      render :status => 404
    end
  end
end