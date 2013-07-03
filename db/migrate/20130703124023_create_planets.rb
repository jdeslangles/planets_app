class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.float :mass
      t.float :orbit
      t.string :planet_type
      t.integer :moons, limit: 2
      t.boolean :rings, null: false, default: false
      t.float :period

      t.timestamps
    end
  end
end
