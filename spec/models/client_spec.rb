require 'rails_helper'

RSpec.describe Client, type: :model do
  before(:each) do
    @client = create(:client)
  end

  it "is valid with valid attributes" do
    expect(@client).to be_valid
  end
end
