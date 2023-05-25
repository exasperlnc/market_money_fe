require 'rails_helper'

RSpec.describe MarketsFacade do
  before :all do
    @market_facade = MarketsFacade.new
  end

  describe 'get_markets' do
    it 'creates market poros' do
      markets = @market_facade.markets

      
      expect(markets).to be_a(Array)
      expect(markets[0]).to be_a(Market)
    end
  end
end