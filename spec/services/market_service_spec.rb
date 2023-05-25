require 'rails_helper'

RSpec.describe MarketService do
  context 'class methods' do
    it 'returns all markets' do
      @market_service = MarketService.new.get_markets

      expect(@market_service).to be_an(Array)

      market_data = @market_service[:results]

      market_data[0..19].each do |market|
        expect(market).to have_key(:id)
        expect(market[:id]).to be_a(String)

        expect(market).to have_key(:name)
        expect(market[:name]).to be_a(String)

        expect(market).to have_key(:address)
        expect(market[:address]).to be_a(String)

        expect(market).to have_key(:city)
        expect(market[:city]).to be_a(String)

        expect(market).to have_key(:county)
        expect(market[:county]).to be_a(String)

        expect(market).to have_key(:state)
        expect(market[:state]).to be_a(String)

        expect(market).to have_key(:zip)
        expect(market[:zip]).to be_a(String)

        expect(market).to have_key(:lon)
        expect(market[:lon]).to be_a(String)

        expect(market).to have_key(:lat)
        expect(market[:lat]).to be_a(String)
      end
    end
  end
end