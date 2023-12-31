# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AppointmentQuestionsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/appointment_questions').to route_to('appointment_questions#index')
    end

    it 'routes to #new' do
      expect(get: '/appointment_questions/new').to route_to('appointment_questions#new')
    end

    it 'routes to #show' do
      expect(get: '/appointment_questions/1').to route_to('appointment_questions#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/appointment_questions/1/edit').to route_to('appointment_questions#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/appointment_questions').to route_to('appointment_questions#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/appointment_questions/1').to route_to('appointment_questions#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/appointment_questions/1').to route_to('appointment_questions#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/appointment_questions/1').to route_to('appointment_questions#destroy', id: '1')
    end
  end
end
