require 'rails_helper'

RSpec.describe "appointment_question_options/index", type: :view do
  before(:each) do
    assign(:appointment_question_options, [
      AppointmentQuestionOption.create!(
        appointment_question: nil
      ),
      AppointmentQuestionOption.create!(
        appointment_question: nil
      )
    ])
  end

  it "renders a list of appointment_question_options" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
