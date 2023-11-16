# frozen_string_literal: true

class AppointmentGroup < ApplicationRecord
  has_many :appointment_titles, dependent: :destroy
end
