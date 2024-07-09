class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :number, null: false
      t.string :image, null: false
      t.string :email, null: false, unique: true
      t.string :password, null: false
      t.integer :role, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end