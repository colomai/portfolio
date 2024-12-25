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
end