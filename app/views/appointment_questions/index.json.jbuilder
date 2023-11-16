# frozen_string_literal: true

json.array! @appointment_questions, partial: 'appointment_questions/appointment_question', as: :appointment_question
