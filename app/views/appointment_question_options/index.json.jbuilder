# frozen_string_literal: true

json.array! @appointment_question_options, partial: 'appointment_question_options/appointment_question_option',
                                           as: :appointment_question_option
