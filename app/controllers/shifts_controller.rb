class ShiftsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @shift = Shift.new
  end

  def create
    @shift = current_user.shifts.new(shift_params)
    @shift.status = "pending"

    if @shift.save
      redirect_to employee_path(current_user), notice: "シフト申請しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    date = Date.new(params[:year].to_i, params[:month].to_i, params[:day].to_i)
    @shift = Shift.find_by(date: date)
  end
    
  private
    
  def shift_params
    params.require(:shift).permit(:start_time, :end_time)
  end
end
