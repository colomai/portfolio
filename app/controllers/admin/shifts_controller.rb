class Admin::ShiftsController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:number].present?
      @user = User.find_by(number: params[:number])
      if @user.present?
        @shifts = @user.shifts.order(start_time: :desc).page(params[:page]).per(5)
      else
        flash[:alert] = '指定された社員番号のユーザーは存在しません'
      end
    end
  end
  def update
    @shift = Shift.find(params[:id])
      if @shift.update(shift_params) # statusの更新
        redirect_to admin_shifts_path(number: params[:number])
      else
        redirect_to admin_shifts_path(number: params[:number]), alert: "シフトの更新に失敗しました。"
      end
  end
  private
  def shift_params
    params.require(:shift).permit(:status)
  end
end