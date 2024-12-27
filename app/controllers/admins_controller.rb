class AdminsController < ApplicationController
  before_action :authenticate_user!

  def index
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
      redirect_to admin_path(@user), notice: 'プロフィールを更新しました'
    else
      render :edit, alert: '更新に失敗しました'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end