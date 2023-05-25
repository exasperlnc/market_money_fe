require 'rails_helper'

RSpec.describe 'Market Index Page' do
  it 'shows all markets' do
    visit '/markets'

    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content('Washington')
    expect(page).to have_content('District of Columbia')
  end
end