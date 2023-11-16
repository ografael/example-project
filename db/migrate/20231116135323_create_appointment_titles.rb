# frozen_string_literal: true

class CreateAppointmentTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_titles do |t|
      t.string :name
      t.references :appointment_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
