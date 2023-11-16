require 'rails_helper'

RSpec.describe "appointment_questions/show", type: :view do
  before(:each) do
    @appointment_question = assign(:appointment_question, AppointmentQuestion.create!(
      eye_side: "Eye Side",
      appointment_title: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Eye Side/)
    expect(rendered).to match(//)
  end
end
