# frozen_string_literal: true

class AppointmentQuestionResponse < ApplicationRecord
  belongs_to :appointment_question
  belongs_to :appointment_question_option
  belongs_to :patient
end
