# frozen_string_literal: true

3.times do
  User.create!(name: Faker::Name.unique.name, role: 'Admin')
end

10.times do
  Patient.create!(name: Faker::Name.unique.name)
end
