# frozen_string_literal: true
class Admin::ApplicationController < ActionController::Base
  layout 'admin/layouts/application'

  before_action :had_sign_in?

  private

  def had_sign_in?
    redirect_to admin_sign_in_path if current_admin.blank?
  end
  
  def current_admin
    @current_admin ||= User.find_by_token(cookies[:token])
  end

  helper_method :current_admin
end
