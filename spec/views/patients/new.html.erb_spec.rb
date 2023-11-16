# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'patients/new' do
  before do
    assign(:patient, Patient.new(
                       name: 'MyString'
                     ))
  end

  it 'renders new patient form' do
    render

    assert_select 'form[action=?][method=?]', patients_path, 'post' do
      assert_select 'input[name=?]', 'patient[name]'
    end
  end
end
