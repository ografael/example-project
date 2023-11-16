require 'rails_helper'

RSpec.describe "appointment_groups/edit", type: :view do
  before(:each) do
    @appointment_group = assign(:appointment_group, AppointmentGroup.create!(
      name: "MyString"
    ))
  end

  it "renders the edit appointment_group form" do
    render

    assert_select "form[action=?][method=?]", appointment_group_path(@appointment_group), "post" do

      assert_select "input[name=?]", "appointment_group[name]"
    end
  end
end
