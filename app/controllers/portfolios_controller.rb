class PortfoliosController < ApplicationController
  def show
    @portfolio_items = PortfolioItem.all
  end
end
