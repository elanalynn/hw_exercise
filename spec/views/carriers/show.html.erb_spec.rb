require 'rails_helper'

RSpec.describe "carriers/show", type: :view do
  before(:each) do
    @carrier = assign(:carrier, Carrier.create!(
      carrier_id: 2,
      company_name: "",
      address_1: "Address 1",
      address_2: "Address 2",
      city: "City",
      state: "State",
      postal_code: "Postal Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Postal Code/)
  end
end
