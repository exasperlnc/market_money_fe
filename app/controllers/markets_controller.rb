class MarketsController < ApplicationController
  def index
    @markets = MarketsFacade.markets
  end
end