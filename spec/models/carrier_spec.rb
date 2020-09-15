require 'rails_helper'

RSpec.describe Carrier, type: :model do
  before(:each) do
    @carrier = create(:carrier)
  end

  it 'is valid with valid attributes' do
    expect(@carrier).to be_valid
  end
end
