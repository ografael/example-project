# frozen_string_literal: true

json.array! @appointment_question_responses, partial: 'appointment_question_responses/appointment_question_response',
                                             as: :appointment_question_response
