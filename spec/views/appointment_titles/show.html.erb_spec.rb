require 'rails_helper'

RSpec.describe "appointment_titles/show", type: :view do
  before(:each) do
    @appointment_title = assign(:appointment_title, AppointmentTitle.create!(
      name: "Name",
      appointment_group: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
