require 'rails_helper'

RSpec.describe "appointment_questions/edit", type: :view do
  before(:each) do
    @appointment_question = assign(:appointment_question, AppointmentQuestion.create!(
      eye_side: "MyString",
      appointment_title: nil
    ))
  end

  it "renders the edit appointment_question form" do
    render

    assert_select "form[action=?][method=?]", appointment_question_path(@appointment_question), "post" do

      assert_select "input[name=?]", "appointment_question[eye_side]"

      assert_select "input[name=?]", "appointment_question[appointment_title_id]"
    end
  end
end
