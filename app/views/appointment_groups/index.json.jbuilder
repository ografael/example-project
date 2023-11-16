# frozen_string_literal: true

json.array! @appointment_groups, partial: 'appointment_groups/appointment_group', as: :appointment_group
