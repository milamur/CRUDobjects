class CreateOnlines < ActiveRecord::Migration[6.0]
  def change
    create_table :onlines do |t|
      t.string :class_name
      t.boolean :assignments
      t.integer :hours_per_week

      t.timestamps
    end
  end
end
