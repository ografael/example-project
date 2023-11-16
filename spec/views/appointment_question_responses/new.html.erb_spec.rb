# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'appointment_question_responses/new' do
  before do
    assign(:appointment_question_response, AppointmentQuestionResponse.new(
                                             appointment_question: nil
                                           ))
  end

  it 'renders new appointment_question_response form' do
    render

    assert_select 'form[action=?][method=?]', appointment_question_responses_path, 'post' do
      assert_select 'input[name=?]', 'appointment_question_response[appointment_question_id]'
    end
  end
end
