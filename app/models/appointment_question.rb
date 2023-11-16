# frozen_string_literal: true

class AppointmentQuestion < ApplicationRecord
  belongs_to :appointment_title
  has_many :appointment_question_options, dependent: :destroy
end
