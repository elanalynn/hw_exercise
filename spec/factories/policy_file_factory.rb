FactoryBot.define do
  factory :policy_file do
    name { 'name' }
    after(:build) do |policy_file|
      policy_file.data.attach(
        io: File.open(Rails.root.join('spec', 'csv', 'test_policies.csv')),
        filename: 'test_policies.csv',
        content_type: 'text/csv'
      )
    end
  end
end
