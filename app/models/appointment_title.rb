# frozen_string_literal: true

class AppointmentTitle < ApplicationRecord
  belongs_to :appointment_group
end
