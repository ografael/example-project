# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'appointment_titles/index' do
  before do
    assign(:appointment_titles, [
             AppointmentTitle.create!(
               name: 'Name',
               appointment_group: nil
             ),
             AppointmentTitle.create!(
               name: 'Name',
               appointment_group: nil
             )
           ])
  end

  it 'renders a list of appointment_titles' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
