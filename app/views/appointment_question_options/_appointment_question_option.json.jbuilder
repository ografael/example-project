# frozen_string_literal: true

json.extract! appointment_question_option, :id, :appointment_question_id, :created_at, :updated_at
json.url appointment_question_option_url(appointment_question_option, format: :json)
