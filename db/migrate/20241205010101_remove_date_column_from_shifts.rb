class RemoveDateColumnFromShifts < ActiveRecord::Migration[7.0]
  def up
    remove_column :shifts, :date
  end

  def down
    add_column :shifts, :date, :date
  end
end
