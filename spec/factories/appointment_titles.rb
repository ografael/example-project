# frozen_string_literal: true

FactoryBot.define do
  factory :appointment_title do
    name { 'MyString' }
    appointment_group { nil }
  end
end
