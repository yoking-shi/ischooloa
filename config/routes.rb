# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do

    get :sign_in, to: 'cookies#sign_in'
    post :to_sign_in, to: 'cookies#to_sign_in'
    delete :sign_out, to: 'cookies#sign_out'
    get :forget_password, to: 'cookies#forget_password'
    put :change_password, to: 'cookies#change_password'
    root 'dashboard#index'
  end
end
