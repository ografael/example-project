# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'customers/new' do
  before do
    assign(:customer, Customer.new(
                        name: 'MyString'
                      ))
  end

  it 'renders new customer form' do
    render

    assert_select 'form[action=?][method=?]', customers_path, 'post' do
      assert_select 'input[name=?]', 'customer[name]'
    end
  end
end
