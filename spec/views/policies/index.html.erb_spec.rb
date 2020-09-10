require 'rails_helper'

RSpec.describe "policies/index", type: :view do
  before(:each) do
    assign(:policies, [
      Policy.create!(
        policy_type: "Type",
        division: "Division",
        carrier_id: 2,
        client_id: 3,
        written_premium: 4.5,
        carrier_policy_number: 5
      ),
      Policy.create!(
        type: "Type",
        division: "Division",
        carrier_id: 2,
        client_id: 3,
        written_premium: 4.5,
        carrier_policy_number: 5
      )
    ])
  end

  xit "renders a list of policies" do
    render
    assert_select "tr>td", text: "Type".to_s, count: 2
    assert_select "tr>td", text: "Division".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
