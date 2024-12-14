class AdminsController < ApplicationController
  before_action :authenticate_user!

  def top
  end
    def shifts
      @shifts = Shift.all
    end
end