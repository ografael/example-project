# frozen_string_literal: true

10.times do
  Customer.create!(name: Faker::Name.unique.name)
end
