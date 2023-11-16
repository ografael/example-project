json.extract! appointment_title, :id, :name, :appointment_group_id, :created_at, :updated_at
json.url appointment_title_url(appointment_title, format: :json)
