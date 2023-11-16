# frozen_string_literal: true

3.times do
  User.create!(name: Faker::Name.unique.name, role: 'Admin')
end

10.times do
  Patient.create!(name: Faker::Name.unique.name)
end

['Autorefrator dinamico', 'Autorefrator estatico'].each do |app_group_name|
  app_group = AppointmentGroup.create!(name: app_group_name)

  ['Esferico', 'Cilindrico', 'Eixo'].each do |title|
    app_title = app_group.appointment_titles.create!(name: title)

    ['Olho direito', 'Olho esquerdo'].each do |eye|
      app_question = app_title.appointment_questions.create!(
        eye_side: eye
      )

      ['-4,25', '-4,75', '-5,00', '-5,25'].each do |question_option|
        app_question.appointment_question_options.create!(
          question_option:
        )
      end
    end
  end
end

appointment_question = AppointmentQuestion.last

Patient.last.appointment_question_responses.create!(
  appointment_question:,
  appointment_question_option: appointment_question.appointment_question_options.sample
)
