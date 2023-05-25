require 'rails_helper'

RSpec.describe Market do
  let!(:market) { Market.new(id: 1, name: "Cherry Creek Farmers Market", street: "123 Main St", city: "Denver", county: "Denver", state: "CO", zip: "80206", lon: "-104.949515", lat: "39.711651", vendor_count: 10) }

  it 'exists' do
    expect(market).to be_a(Market)
  end

  it 'has attributes' do
    expect(market).to have_attributes(id: 1)
    expect(market).to have_attributes(name: "Cherry Creek Farmers Market")
    expect(market).to have_attributes(street: "123 Main St")
    expect(market).to have_attributes(city: "Denver")
    expect(market).to have_attributes(county: "Denver")
    expect(market).to have_attributes(state: "CO")
    expect(market).to have_attributes(zip: "80206")
    expect(market).to have_attributes(lon: "-104.949515")
    expect(market).to have_attributes(lat: "39.711651")
    expect(market).to have_attributes(vendor_count: 10)
  end
end
