class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.string :food_preference
      t.timestamps
    end
  end
end
