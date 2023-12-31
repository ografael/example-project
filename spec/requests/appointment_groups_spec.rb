# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/appointment_groups' do
  # This should return the minimal set of attributes required to create a valid
  # AppointmentGroup. As you add validations to AppointmentGroup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      AppointmentGroup.create! valid_attributes
      get appointment_groups_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      appointment_group = AppointmentGroup.create! valid_attributes
      get appointment_group_url(appointment_group)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_appointment_group_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      appointment_group = AppointmentGroup.create! valid_attributes
      get edit_appointment_group_url(appointment_group)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new AppointmentGroup' do
        expect do
          post appointment_groups_url, params: { appointment_group: valid_attributes }
        end.to change(AppointmentGroup, :count).by(1)
      end

      it 'redirects to the created appointment_group' do
        post appointment_groups_url, params: { appointment_group: valid_attributes }
        expect(response).to redirect_to(appointment_group_url(AppointmentGroup.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new AppointmentGroup' do
        expect do
          post appointment_groups_url, params: { appointment_group: invalid_attributes }
        end.not_to change(AppointmentGroup, :count)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post appointment_groups_url, params: { appointment_group: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested appointment_group' do
        appointment_group = AppointmentGroup.create! valid_attributes
        patch appointment_group_url(appointment_group), params: { appointment_group: new_attributes }
        appointment_group.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the appointment_group' do
        appointment_group = AppointmentGroup.create! valid_attributes
        patch appointment_group_url(appointment_group), params: { appointment_group: new_attributes }
        appointment_group.reload
        expect(response).to redirect_to(appointment_group_url(appointment_group))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        appointment_group = AppointmentGroup.create! valid_attributes
        patch appointment_group_url(appointment_group), params: { appointment_group: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested appointment_group' do
      appointment_group = AppointmentGroup.create! valid_attributes
      expect do
        delete appointment_group_url(appointment_group)
      end.to change(AppointmentGroup, :count).by(-1)
    end

    it 'redirects to the appointment_groups list' do
      appointment_group = AppointmentGroup.create! valid_attributes
      delete appointment_group_url(appointment_group)
      expect(response).to redirect_to(appointment_groups_url)
    end
  end
end
