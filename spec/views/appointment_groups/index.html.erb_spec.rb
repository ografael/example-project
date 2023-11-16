# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'appointment_groups/index' do
  before do
    assign(:appointment_groups, [
             AppointmentGroup.create!(
               name: 'Name'
             ),
             AppointmentGroup.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of appointment_groups' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
