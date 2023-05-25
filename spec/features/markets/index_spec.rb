require 'rails_helper'

RSpec.describe 'Market Index Page' do
  it 'shows all markets' do
    visit '/markets'

    expect(page).to have_content('Markets')
    expect(page).to have_content('Name')
    expect(page).to have_content('Address')
    expect(page).to have_content('City')
    expect(page).to have_content('County')
    expect(page).to have_content('State')
    expect(page).to have_content('Zip')
  end
end