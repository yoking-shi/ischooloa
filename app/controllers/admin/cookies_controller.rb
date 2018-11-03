# frozen_string_literal: true

class Admin::CookiesController < Admin::ApplicationController
  layout 'admin/layouts/cookies.html.erb', only: %i[sign_in forget_password]
  skip_before_action :had_sign_in?, only: %i[sign_in to_sign_in forget_password change_password]

  def sign_in; end

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

  def forget_password; end

  def change_password
    @user = User.find_by_account(params[:account])
    if @user.blank?
      flash[:alert] = '请填写正确的用户账号！'
      redirect_to admin_forget_password_path
    end
    if @user.mobile != params[:mobile]
      flash[:alert] = '请填写正确的手机号码！'
      redirect_to admin_forget_password_path
    end
    @user.password = params[:password]
    if @user.save
      flash[:notice] = '密码修改成功，请登录！'
      redirect_to admin_sign_in_path
    else
      flash[:alert] = '修改失败，请重试！'
      redirect_to admin_forget_password_path
    end
  end

  def sign_out
    cookies.delete('token')
    redirect_to admin_sign_in_path
  end
end
