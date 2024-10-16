# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  #ログインした後のページが出来たら、そのURLを後で貼る
  def after_sign_in_path_for(resource)
    if resource.role === 0
      employees_top_path
    else
      admins_top_path
    end
  end
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
end

def create
  super
  if resource.persisted?
    if resource.role == 1
      flash[:notice] = "管理者としてログインしました。"
    else
      flash[:notice] = "従業員としてログインしました。"
    end
  end
end