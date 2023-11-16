# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'appointment_questions/index' do
  before do
    assign(:appointment_questions, [
             AppointmentQuestion.create!(
               eye_side: 'Eye Side',
               appointment_title: nil
             ),
             AppointmentQuestion.create!(
               eye_side: 'Eye Side',
               appointment_title: nil
             )
           ])
  end

  it 'renders a list of appointment_questions' do
    render
    assert_select 'tr>td', text: 'Eye Side'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
