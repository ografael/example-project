# frozen_string_literal: true

class CreateAppointmentQuestionOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_question_options do |t|
      t.references :appointment_question, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
