class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.get_markets(params[:q])
  end
end