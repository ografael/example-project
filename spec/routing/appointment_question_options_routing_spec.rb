# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AppointmentQuestionOptionsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/appointment_question_options').to route_to('appointment_question_options#index')
    end

    it 'routes to #new' do
      expect(get: '/appointment_question_options/new').to route_to('appointment_question_options#new')
    end

    it 'routes to #show' do
      expect(get: '/appointment_question_options/1').to route_to('appointment_question_options#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/appointment_question_options/1/edit').to route_to('appointment_question_options#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/appointment_question_options').to route_to('appointment_question_options#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/appointment_question_options/1').to route_to('appointment_question_options#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/appointment_question_options/1').to route_to('appointment_question_options#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/appointment_question_options/1').to route_to('appointment_question_options#destroy', id: '1')
    end
  end
end
