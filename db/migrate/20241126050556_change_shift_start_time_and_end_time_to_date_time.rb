class ChangeShiftStartTimeAndEndTimeToDateTime < ActiveRecord::Migration[7.0]
  def change
    change_column :shifts, :start_time, :datetime
    change_column :shifts, :end_time, :datetime
  end
end
