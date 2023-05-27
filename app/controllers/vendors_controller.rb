class VendorsController < ApplicationController
  def show 
    @facade = MarketsFacade.new(params[:id])
    @vendor = @facade.
  end
end