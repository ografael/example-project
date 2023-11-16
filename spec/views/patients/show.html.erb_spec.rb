# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'patients/show' do
  before do
    @patient = assign(:patient, Patient.create!(
                                  name: 'Name'
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
