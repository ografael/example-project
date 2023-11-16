require 'rails_helper'

RSpec.describe "appointment_question_responses/index", type: :view do
  before(:each) do
    assign(:appointment_question_responses, [
      AppointmentQuestionResponse.create!(
        appointment_question: nil
      ),
      AppointmentQuestionResponse.create!(
        appointment_question: nil
      )
    ])
  end

  it "renders a list of appointment_question_responses" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end