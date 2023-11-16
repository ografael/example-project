require 'rails_helper'

RSpec.describe "appointment_titles/new", type: :view do
  before(:each) do
    assign(:appointment_title, AppointmentTitle.new(
      name: "MyString",
      appointment_group: nil
    ))
  end

  it "renders new appointment_title form" do
    render

    assert_select "form[action=?][method=?]", appointment_titles_path, "post" do

      assert_select "input[name=?]", "appointment_title[name]"

      assert_select "input[name=?]", "appointment_title[appointment_group_id]"
    end
  end
end
