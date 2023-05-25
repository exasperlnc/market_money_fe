require 'rails_helper'

RSpec.describe 'Market Show Page' do
  it 'shows one market' do
    visit '/markets/322458'

    expect(page).to have_content("Name: 14&U Farmers' Market")
    expect(page).to have_content('Street Address: 1400 U Street NW')
    expect(page).to have_content('State: District of Columbia')
    expect(page).to have_content('County: District of Columbia')
    expect(page).to have_content('City: Washington')
    expect(page).to have_content('Zip: 20009')
    expect(page).to have_content('Lat: 38.9169984')
    expect(page).to have_content('Lon: -77.0320505 ')
    expect(page).to have_content('Vendor Count: 1')
  end
end