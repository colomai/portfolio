class ShiftsController < ApplicationController
  before_action :authenticate_user!, except: [:status]
  def new
    @shift = Shift.new
  end

  def create
    @shift = current_user.shifts.new(shift_params)
    @shift.status = "pending"
    if @shift.save
      redirect_to employees_top_path, notice: "シフト申請しました"
    else
      render :new
    end
  end

  def status
    @shift = Shift.find_by(date: params[:date])
  end
    
  private
    
  def shift_params
    params.require(:shift).permit(:date, :start_time, :end_time)
  end
end
