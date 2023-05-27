require 'rails_helper'

RSpec.describe MarketMoneyService do
  context 'class methods' do
    it 'returns all markets' do
      market_service = MarketMoneyService.new.get_markets
      
      market_data = market_service[:data]

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
    it 'returns one market' do
      market_service = MarketMoneyService.new.get_market(322458)

      market = market_service[:data]

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

    it 'returns market vendors' do
      vendor_service = MarketMoneyService.new.get_market_vendors(322458)
      
      vendors_data = vendor_service[:data]


      vendors_data[0..9].each do |vendor|
        attributes = vendor[:attributes]
        expect(vendor).to have_key(:id)
        expect(vendor[:id]).to be_a(String)

        expect(attributes).to have_key(:name)
        expect(attributes[:name]).to be_a(String)

        expect(attributes).to have_key(:description)
        expect(attributes[:description]).to be_a(String)

        expect(attributes).to have_key(:contact_name)
        expect(attributes[:contact_name]).to be_a(String)

        expect(attributes).to have_key(:contact_phone)
        expect(attributes[:contact_phone]).to be_a(String)

        expect(attributes).to have_key(:credit_accepted)
      end
    end
    it 'returns one vendor' do
      vendor_service = MarketMoneyService.new.get_vendor(55823)
    
      vendor_data = vendor_service[:data]

      attributes = vendor_data[:attributes]
      expect(vendor_data).to have_key(:id)
      expect(vendor_data[:id]).to be_a(String)

      expect(attributes).to have_key(:name)
      expect(attributes[:name]).to be_a(String)

      expect(attributes).to have_key(:description)
      expect(attributes[:description]).to be_a(String)

      expect(attributes).to have_key(:contact_name)
      expect(attributes[:contact_name]).to be_a(String)

      expect(attributes).to have_key(:contact_phone)
      expect(attributes[:contact_phone]).to be_a(String)

      expect(attributes).to have_key(:credit_accepted)
    end
  end
end