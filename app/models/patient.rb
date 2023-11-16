# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :appointment_question_responses, dependent: :destroy
end
