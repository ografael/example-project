# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AppointmentGroupsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/appointment_groups').to route_to('appointment_groups#index')
    end

    it 'routes to #new' do
      expect(get: '/appointment_groups/new').to route_to('appointment_groups#new')
    end

    it 'routes to #show' do
      expect(get: '/appointment_groups/1').to route_to('appointment_groups#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/appointment_groups/1/edit').to route_to('appointment_groups#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/appointment_groups').to route_to('appointment_groups#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/appointment_groups/1').to route_to('appointment_groups#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/appointment_groups/1').to route_to('appointment_groups#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/appointment_groups/1').to route_to('appointment_groups#destroy', id: '1')
    end
  end
end
