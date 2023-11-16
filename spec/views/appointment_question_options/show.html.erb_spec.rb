require 'rails_helper'

RSpec.describe "appointment_question_options/show", type: :view do
  before(:each) do
    @appointment_question_option = assign(:appointment_question_option, AppointmentQuestionOption.create!(
      appointment_question: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
