class EmployeesController < ApplicationController
  before_action :authenticate_user!

  def top      
    @year = params[:year].present? ? params[:year] .to_i : Date.today.year
    @month = params[:month].present? ? params[:month].to_i : Date.today.month
      
    # カレンダーの生成ロジック
    @first_day = Date.new(@year, @month, 1)
    @last_day = @first_day.end_of_month
    @first_day_wday = @first_day.wday
  end

  def show
    @user = current_user
  end
  def edit
    @user = current_user
  end
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to employee_path(@user), notice: 'プロフィールを更新しました'
    else
      render :edit, alert: '更新に失敗しました'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end