# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/index' do
  before do
    assign(:users, [
             User.create!(
               name: 'Name',
               role: 'Role'
             ),
             User.create!(
               name: 'Name',
               role: 'Role'
             )
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Role'.to_s, count: 2
  end
end
