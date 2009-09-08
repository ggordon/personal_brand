class PagesController < ApplicationController

  def show
    if params[:id] == "about"
      set_selected_nav_tab :about
    end
      
    if %w(about).include?(params[:id])
      render "pages/show/#{params[:id]}"
    else
      render :status => 404
    end
  end
end