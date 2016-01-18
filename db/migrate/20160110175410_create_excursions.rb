class CreateExcursions < ActiveRecord::Migration
  def change
    create_table :excursions do |t|
      t.date    :date
      t.decimal :distance
      t.integer :minutes
      t.integer :seconds
      t.integer :calories

      t.timestamps null: false
    end
  end
end
