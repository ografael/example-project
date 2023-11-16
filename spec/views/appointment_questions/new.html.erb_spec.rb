require 'rails_helper'

RSpec.describe "appointment_questions/new", type: :view do
  before(:each) do
    assign(:appointment_question, AppointmentQuestion.new(
      eye_side: "MyString",
      appointment_title: nil
    ))
  end

  it "renders new appointment_question form" do
    render

    assert_select "form[action=?][method=?]", appointment_questions_path, "post" do

      assert_select "input[name=?]", "appointment_question[eye_side]"

      assert_select "input[name=?]", "appointment_question[appointment_title_id]"
    end
  end
end
