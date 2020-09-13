FactoryBot.define do
  factory :carrier do
    company_name { FFaker::Company.name }
    address_1 { FFaker:: AddressUS.street_address }
    address_2 { FFaker:: AddressUS.secondary_address }
    city { FFaker:: AddressUS.city }
    state { FFaker:: AddressUS.state }
    postal_code { FFaker:: AddressUS.zip_code }
  end
end