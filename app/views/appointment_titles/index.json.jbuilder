# frozen_string_literal: true

json.array! @appointment_titles, partial: 'appointment_titles/appointment_title', as: :appointment_title
