# frozen_string_literal: true

class Admin::CookiesController < Admin::ApplicationController
  layout 'admin/layouts/cookies.html.erb', only: %i[sign_in forget_password]
  skip_before_action :had_sign_in?, only: %i[sign_in to_sign_in forget_password change_password]

  def sign_in
  end

  def to_sign_in
  end

  def forget_password
  end

  def change_password
  end

  def sign_out
  end
end
