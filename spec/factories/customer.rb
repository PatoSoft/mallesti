FactoryGirl.define do
  factory :customer do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
    town { Faker::Address.city }
    city { Faker::Address.city }
    zip_code { Faker::Address.zip_code }
    country { Faker::Address.country }
    phone { Faker::PhoneNumber.cell_phone }
    cif
    email
  end
end
