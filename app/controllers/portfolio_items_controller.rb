class PortfolioItemsController < ApplicationController
  def show
    @portfolio_item = PortfolioItem.find(params[:id])
  end
  
  def new
    @portfolio_item = PortfolioItem.new
  end
  
  def create
    @portfolio_item = PortfolioItem.new(params[:portfolio_item])
    if @portfolio_item.save
      flash[:notice] = "Successfully created portfolio item."
      redirect_to @portfolio_item
    else
      render :action => 'new'
    end
  end
  
  def edit
    @portfolio_item = PortfolioItem.find(params[:id])
  end
  
  def update
    @portfolio_item = PortfolioItem.find(params[:id])
    if @portfolio_item.update_attributes(params[:portfolio_item])
      flash[:notice] = "Successfully updated portfolio item."
      redirect_to @portfolio_item
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @portfolio_item = PortfolioItem.find(params[:id])
    @portfolio_item.destroy
    flash[:notice] = "Successfully destroyed portfolio item."
    redirect_to root_url
  end
end
