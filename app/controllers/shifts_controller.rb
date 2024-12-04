class ShiftsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
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

  def index
    @date = Date.new(params[:year].to_i, params[:month].to_i, params[:day].to_i)
    @shifts = Shift.where(date: @date)
  end
    
  private
    
  def shift_params
    params.require(:shift).permit(:start_time, :end_time)
  end
end
