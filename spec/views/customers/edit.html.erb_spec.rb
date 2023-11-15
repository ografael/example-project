# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'customers/edit' do
  before do
    @customer = assign(:customer, Customer.create!(
                                    name: 'MyString'
                                  ))
  end

  it 'renders the edit customer form' do
    render

    assert_select 'form[action=?][method=?]', customer_path(@customer), 'post' do
      assert_select 'input[name=?]', 'customer[name]'
    end
  end
end
