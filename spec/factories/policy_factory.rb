FactoryBot.define do
  factory :policy do
    carrier
    client
    effective_date { FFaker::Time.datetime }
    expiration_date { FFaker::Time.datetime } 
    written_premium { 100.0 }
    carrier_policy_number { 1234 }
  end
end
