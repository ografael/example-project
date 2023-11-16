# frozen_string_literal: true

class CreateAppointmentQuestionResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_question_responses do |t|
      t.references :appointment_question, null: false, foreign_key: true
      t.references :appointment_question_option, null: false, foreign_key: true, index: { name: 'index_aqr_on_aqo_id' }
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
