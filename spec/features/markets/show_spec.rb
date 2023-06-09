require 'rails_helper'

RSpec.describe 'Market Show Page' do
  it 'shows one market' do
    visit '/markets/322458'
    
    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content('1400 U Street NW')
    expect(page).to have_content('District of Columbia')
    expect(page).to have_content('Washington')
    expect(page).to have_content('20009')
    expect(page).to have_content('Vendor Total: 1')
  end

  it 'shows vendors' do
    visit '/markets/322458'

    expect(page).to have_content("The Charcuterie Corner")
  end
end