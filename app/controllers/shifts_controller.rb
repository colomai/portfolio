class ShiftsController < ApplicationController
  def new
    @shift = Shift.new
  end 

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
        redirect_to employees_top_path, notice: "シフト申請しました"
    else
      render :new
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:date, :start_time, :end_time, :user_id)
  end
end