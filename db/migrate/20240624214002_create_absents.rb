class CreateAbsents < ActiveRecord::Migration[7.0]
  def change
    create_table :absents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shift, null: false, foreign_key: true
      t.date :date, null: false
      t.string :status, null: false
      t.timestamps null: false
    end
  end
end
