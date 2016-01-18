class CreateExcursions < ActiveRecord::Migration
  def change
    create_table :excursions do |t|
      t.date    :date
      t.decimal :distance
      t.integer :hours
      t.integer :minutes
      t.integer :calories

      t.timestamps null: false
    end
  end
end
