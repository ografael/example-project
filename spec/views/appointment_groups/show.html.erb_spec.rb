require 'rails_helper'

RSpec.describe "appointment_groups/show", type: :view do
  before(:each) do
    @appointment_group = assign(:appointment_group, AppointmentGroup.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
