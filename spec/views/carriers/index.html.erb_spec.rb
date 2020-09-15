require 'rails_helper'

RSpec.describe 'carriers/index', type: :view do
  before(:each) do
    assign(:carriers, [
      Carrier.create!(
        id: 2,
        company_name: '',
        address_1: 'Address 1',
        address_2: 'Address 2',
        city: 'City',
        state: 'State',
        postal_code: 'Postal Code'
      ),
      Carrier.create!(
        id: 3,
        company_name: '',
        address_1: 'Address 1',
        address_2: 'Address 2',
        city: 'City',
        state: 'State',
        postal_code: 'Postal Code'
      )
    ])
  end

  it 'renders a list of carriers' do
    render
    assert_select 'tr>td', text: ''.to_s, count: 2
    assert_select 'tr>td', text: 'Address 1'.to_s, count: 2
    assert_select 'tr>td', text: 'Address 2'.to_s, count: 2
    assert_select 'tr>td', text: 'City'.to_s, count: 2
    assert_select 'tr>td', text: 'State'.to_s, count: 2
    assert_select 'tr>td', text: 'Postal Code'.to_s, count: 2
  end
end
