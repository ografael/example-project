# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'appointment_titles/edit' do
  before do
    @appointment_title = assign(:appointment_title, AppointmentTitle.create!(
                                                      name: 'MyString',
                                                      appointment_group: nil
                                                    ))
  end

  it 'renders the edit appointment_title form' do
    render

    assert_select 'form[action=?][method=?]', appointment_title_path(@appointment_title), 'post' do
      assert_select 'input[name=?]', 'appointment_title[name]'

      assert_select 'input[name=?]', 'appointment_title[appointment_group_id]'
    end
  end
end
