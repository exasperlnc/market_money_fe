class MarketsController < ApplicationController
  before_action :set_facade, only: [:index, :show]
  def index
    @markets = @_facade.markets
  end

  def show
    @market = @_facade.market(params[:id])
  end

  private 
    def set_facade
      @_facade ||= MarketsFacade.new
    end
end