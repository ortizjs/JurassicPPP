class CreateDinosaurs < ActiveRecord::Migration[5.2]
  def change
    create_table :dinosaurs do |t|
      t.string :name, null: false
      t.integer :species_id, null: false
      t.string :food_preference
      t.integer :cage_id
      t.timestamps
    end
    add_index :dinosaurs, :name
  end
end
