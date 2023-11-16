class CreateAppointmentQuestionResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_question_responses do |t|
      t.references :appointment_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end