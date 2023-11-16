# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointment_question_options
  resources :appointment_question_responses
  resources :appointment_questions
  resources :appointment_titles
  resources :appointment_groups
  resources :patients
  resources :users
  resources :customers

  root 'customers#index'
end
