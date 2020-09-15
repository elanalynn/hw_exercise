require 'rails_helper'

RSpec.describe 'policies/new', type: :view do
  before(:each) do
    assign(:policy, Policy.new(
      policy_type: '',
      division: 'MyString',
      carrier_id: create(:carrier).id,
      client_id: create(:client).id,
      effective_date: DateTime.new,
      expiration_date: DateTime.new,
      written_premium: 1.5,
      carrier_policy_number: 1
    ))
  end

  it 'renders new policy form' do
    render

    assert_select 'form[action=?][method=?]', policies_path, 'post' do
      assert_select 'input[name=?]', 'policy[policy_type]'
      assert_select 'input[name=?]', 'policy[division]'
      assert_select 'input[name=?]', 'policy[carrier_id]'
      assert_select 'input[name=?]', 'policy[client_id]'
      assert_select 'input[name=?]', 'policy[written_premium]'
      assert_select 'input[name=?]', 'policy[carrier_policy_number]'
    end
  end
end
