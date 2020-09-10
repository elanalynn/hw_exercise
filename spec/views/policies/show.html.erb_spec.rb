require 'rails_helper'

RSpec.describe "policies/show", type: :view do
  before(:each) do
    @policy = assign(:policy, Policy.create!(
      policy_type: "Type",
      division: "Division",
      carrier_id: 2,
      client_id: 3,
      written_premium: 4.5,
      carrier_policy_number: 5
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Division/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5/)
  end
end
