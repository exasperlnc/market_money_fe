require 'rails_helper'

RSpec.describe "Vendor Show Page" do
  describe "Happy path" do
    it 'visits page' do
      visit '/vendors/55823'


      expect(current_path).to eq(vendor_path(55823))
    end

    it 'has vendor name' do
      expect(page).to have_content("The Charcuterie Corner")
    end

    xit 'has contact name' do
      expect(page).to have_content()
    end

    xit 'has contact phone number' do
      expect(page).to have_content()
    end

    xit 'has credit accepted' do
      expect(page).to have_content('Credit Accepted: YES')
    end

    xit 'has description' do
      expect(page).to have_content()
    end
  end
end