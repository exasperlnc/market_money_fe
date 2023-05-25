require 'rails_helper'

RSpec.describe MarketService do
  context 'class methods' do
    it 'returns all markets' do
      @market_service = MarketService.new.get_markets
      # require 'pry'; binding.pry
      # expect(@market_service).to be_an(Array) 

      market_data = @market_service[:data]

      market_data[0..9].each do |market|
        attributes = market[:attributes]
        expect(market).to have_key(:id)
        expect(market[:id]).to be_a(String)

        expect(attributes).to have_key(:name)
        expect(attributes[:name]).to be_a(String)

        expect(attributes).to have_key(:street)
        expect(attributes[:street]).to be_a(String)

        expect(attributes).to have_key(:city)
        expect(attributes[:city]).to be_a(String)

        expect(attributes).to have_key(:county)
        expect(attributes[:county]).to be_a(String)

        expect(attributes).to have_key(:state)
        expect(attributes[:state]).to be_a(String)

        expect(attributes).to have_key(:zip)
        expect(attributes[:zip]).to be_a(String)

        expect(attributes).to have_key(:lon)
        expect(attributes[:lon]).to be_a(String)

        expect(attributes).to have_key(:lat)
        expect(attributes[:lat]).to be_a(String)

        expect(attributes).to have_key(:vendor_count)
        expect(attributes[:vendor_count]).to be_a(Integer)
      end
    end
  end
end