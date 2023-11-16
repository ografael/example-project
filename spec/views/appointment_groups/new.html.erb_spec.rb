# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'appointment_groups/new' do
  before do
    assign(:appointment_group, AppointmentGroup.new(
                                 name: 'MyString'
                               ))
  end

  it 'renders new appointment_group form' do
    render

    assert_select 'form[action=?][method=?]', appointment_groups_path, 'post' do
      assert_select 'input[name=?]', 'appointment_group[name]'
    end
  end
end
