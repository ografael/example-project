# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'appointment_question_options/edit' do
  before do
    @appointment_question_option = assign(:appointment_question_option, AppointmentQuestionOption.create!(
                                                                          appointment_question: nil
                                                                        ))
  end

  it 'renders the edit appointment_question_option form' do
    render

    assert_select 'form[action=?][method=?]', appointment_question_option_path(@appointment_question_option), 'post' do
      assert_select 'input[name=?]', 'appointment_question_option[appointment_question_id]'
    end
  end
end
