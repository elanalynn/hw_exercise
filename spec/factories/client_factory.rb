FactoryBot.define do
  factory :client do
    client_name { FFaker::Company.name }
    address { FFaker:: AddressUS.street_address }
    city { FFaker:: AddressUS.city }
    state { FFaker:: AddressUS.state }
    division { 'A' }
    major_group { 23 }
    industry_group { 456 }
    sic { 7890 }
    description { FFaker::Lorem.phrase }
  end
end