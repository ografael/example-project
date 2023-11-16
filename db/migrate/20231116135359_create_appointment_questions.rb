class CreateAppointmentQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_questions do |t|
      t.string :eye_side
      t.references :appointment_title, null: false, foreign_key: true

      t.timestamps
    end
  end
end
