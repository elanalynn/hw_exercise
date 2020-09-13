require 'rails_helper'

RSpec.describe Policy, type: :model do
  before(:each) do
    @policy = create(:policy)
  end

  it "is valid with valid attributes" do
    expect(@policy).to be_valid
  end

  it "is not valid without carrier_id" do
    @policy.carrier_id = nil
    expect(@policy).to_not be_valid
  end

  it "is not valid without effective_date" do
    @policy.effective_date = nil
    expect(@policy).to_not be_valid
  end

  it "is not valid without expiration_date" do
    @policy.expiration_date = nil
    expect(@policy).to_not be_valid
  end

  it "is not valid without written_premium" do
    @policy.written_premium = nil
    expect(@policy).to_not be_valid
  end

  it "is not valid without carrier_policy_number" do
    @policy.carrier_policy_number = nil
    expect(@policy).to_not be_valid
  end
end
