require 'rails_helper'

RSpec.describe MarketsFacade do
  before :all do
    @markets_facade = MarketsFacade.new(322458)
  end

  describe 'get_markets' do
    it 'creates market poros' do
      markets = @markets_facade.markets

      
      expect(markets).to be_a(Array)
      expect(markets[0]).to be_a(Market)
    end
  end

  describe 'get_market' do
    it 'creates market poro' do
      market = @markets_facade.market

      expect(market).to be_a(Market)
    end
  end

  describe 'get_vendors' do
    it 'creates vendor poros' do
      vendors = @markets_facade.market_vendors

      expect(vendors).to be_a(Array)
      expect(vendors[0]).to be_a(Vendor)
    end
  end
end