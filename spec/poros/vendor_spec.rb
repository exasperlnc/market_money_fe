require 'rails_helper'

RSpec.describe Vendor do
  let!(:vendor) { Vendor.new(id: 1,
                             name: "Cherry Creek Farmers vendor",
                             description: "It's a vendor",
                             contact_name: "Billy Smeet",
                             contact_phone: "123-456-7890",
                             credit_accepted: true) }

  it 'exists' do
    expect(vendor).to be_a(Vendor)
  end

  it 'has attributes' do
    expect(vendor).to have_attributes(id: 1)
    expect(vendor).to have_attributes(name: "Cherry Creek Farmers vendor")
    expect(vendor).to have_attributes(description: "It's a vendor")
    expect(vendor).to have_attributes(contact_name: "Billy Smeet")
    expect(vendor).to have_attributes(contact_phone: "123-456-7890")
    expect(vendor).to have_attributes(credit_accepted: true)
  end
end
