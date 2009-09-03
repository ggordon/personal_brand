class PortfoliosController < ApplicationController
  before_filter { |page| page.set_selected_nav_tab :portfolio }
  
  def show
    @portfolio_items = PortfolioItem.all
  end
end
