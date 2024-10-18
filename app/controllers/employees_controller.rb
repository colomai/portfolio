class EmployeesController < ApplicationController
  def top      
    @year = params[:year].present? ? params[:year] .to_i : Date.today.year
    @month = params[:month].present? ? params[:month].to_i : Date.today.month
      
    # カレンダーの生成ロジック
    @first_day = Date.new(@year, @month, 1)
    @last_day = @first_day.end_of_month
    @first_day_wday = @first_day.wday
  end
end