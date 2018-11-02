# frozen_string_literal: true

class Admin::CookiesController < Admin::ApplicationController
  layout 'admin/layouts/cookies.html.erb', only: %i[sign_in forget_password]
  skip_before_action :had_sign_in?, only: %i[sign_in to_sign_in forget_password change_password]

  def sign_in
  end

  def to_sign_in
    if params[:account].present? && params[:password].present?
      @user = User.find_by_account(params[:account])
      if @user.present?
        if @user.authenticate(params[:password])
          expires = 1.hours
          expires = 7.days if params[:remenber].present?
          cookies[:token] = { value: @user.token, expires: expires }
          flash[:notice] = '登录成功！'
          redirect_to admin_root_path
        else
          flash[:alert] = '请填写正确的密码！'
          redirect_to :admin_sign_in
        end
      else
        flash[:alert] = '请填写正确的用户名！'
        redirect_to :admin_sign_in
      end
    else
      flash[:alert] = '请填写正确的用户名和密码！'
      redirect_to :admin_sign_in
    end
  end

  def forget_password
  end

  def change_password
  end

  def sign_out
  end
end
