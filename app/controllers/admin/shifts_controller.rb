class Admin::ShiftsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find_by(number: params[:employee_number])
      if @user.present?
        @shifts = @user.shifts.order(start_time: :desc).page(params[:page])
      else
        flash[:alert] = '指定された社員番号のユーザーは存在しません'
        redirect_to admin_shifts_path
      end
  end
end