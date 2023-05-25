class MarketsController < ApplicationController
  before_action :set_facade, only: [:index]
  def index
    @markets = @facade.markets
  end

  private 
    def set_facade
      @facade = MarketsFacade.new
    end
end