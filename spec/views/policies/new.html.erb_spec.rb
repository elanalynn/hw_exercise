require 'rails_helper'

RSpec.describe "policies/new", type: :view do
  before(:each) do
    assign(:policy, Policy.new(
      type: "",
      division: "MyString",
      carrier_id: 1,
      client_id: 1,
      written_premium: 1.5,
      carrier_policy_number: 1
    ))
  end

  it "renders new policy form" do
    render

    assert_select "form[action=?][method=?]", policies_path, "post" do

      assert_select "input[name=?]", "policy[type]"

      assert_select "input[name=?]", "policy[division]"

      assert_select "input[name=?]", "policy[carrier_id]"

      assert_select "input[name=?]", "policy[client_id]"

      assert_select "input[name=?]", "policy[written_premium]"

      assert_select "input[name=?]", "policy[carrier_policy_number]"
    end
  end
end
