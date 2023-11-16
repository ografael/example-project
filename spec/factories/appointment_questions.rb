# frozen_string_literal: true

FactoryBot.define do
  factory :appointment_question do
    eye_side { 'MyString' }
    appointment_title { nil }
  end
end
