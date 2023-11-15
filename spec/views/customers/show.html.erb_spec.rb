# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'customers/show' do
  before do
    @customer = assign(:customer, Customer.create!(
                                    name: 'Name'
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
