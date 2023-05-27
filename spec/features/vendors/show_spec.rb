require 'rails_helper'

RSpec.describe "Vendor Show Page" do
  before :each do
    visit '/vendors/55823'
  end
  describe "Happy path" do
    it 'visits page' do
      expect(current_path).to eq(vendor_path(55823))
    end

    it 'has vendor name' do
      expect(page).to have_content("The Charcuterie Corner")
    end

    it 'has contact name' do
      expect(page).to have_content("Contact Name: Claudie Langworth III")
    end

    it 'has contact phone number' do
      expect(page).to have_content("Phone: 1-147-179-9747")
    end

    it 'has credit accepted' do
      expect(page).to have_content('Credit Accepted: No')
    end

    it 'has description' do
      expect(page).to have_content("Description: Vendor selling a variety of artisanal cured meats and sausages.")
    end
  end
end