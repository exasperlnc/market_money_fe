class MarketsController < ApplicationController
  
  def index
    @markets = MarketsFacade.new.markets
  end

  def show
    @facade = MarketsFacade.new(params[:id])
    @market = @facade.market
    @vendors = @facade.market_vendors
  end
end