FactoryBot.define do
  factory(:business) do
    name {Faker::Restaurant.name}
    category {Faker::Restaurant.type}
    description {Faker::Restaurant.description}
    location {Faker::Address.full_address}
    phone {Faker::PhoneNumber.phone_number}
  end
end