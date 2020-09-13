require 'rails_helper'

RSpec.describe PolicyFile, type: :model do
  
  it "has a valid data attachment" do
    @policy_file = create(:policy_file)
    expect(@policy_file.data).to be_an_instance_of(ActiveStorage::Attached::One) 
  end
end
