class CreateCages < ActiveRecord::Migration[5.2]
  def change
    create_table :cages do |t|
      t.integer :max_cap
      t.string :power_status
      t.integer :num_members
      t.integer :species, array: true, default: []
      t.timestamps
    end
  end
end
