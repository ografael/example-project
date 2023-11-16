require 'rails_helper'

RSpec.describe "appointment_question_responses/show", type: :view do
  before(:each) do
    @appointment_question_response = assign(:appointment_question_response, AppointmentQuestionResponse.create!(
      appointment_question: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
