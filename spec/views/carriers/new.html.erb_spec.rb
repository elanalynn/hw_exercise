require 'rails_helper'

RSpec.describe "carriers/new", type: :view do
  before(:each) do
    assign(:carrier, Carrier.new(
      id: 1,
      company_name: "",
      address_1: "MyString",
      address_2: "MyString",
      city: "MyString",
      state: "MyString",
      postal_code: "MyString"
    ))
  end

  it "renders new carrier form" do
    render

    assert_select "form[action=?][method=?]", carriers_path, "post" do
      assert_select "input[name=?]", "carrier[id]"
      assert_select "input[name=?]", "carrier[company_name]"
      assert_select "input[name=?]", "carrier[address_1]"
      assert_select "input[name=?]", "carrier[address_2]"
      assert_select "input[name=?]", "carrier[city]"
      assert_select "input[name=?]", "carrier[state]"
      assert_select "input[name=?]", "carrier[postal_code]"
    end
  end
end
