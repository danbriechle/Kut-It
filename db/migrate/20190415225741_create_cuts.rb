class CreateCuts < ActiveRecord::Migration[5.2]
  def change
    create_table :cuts do |t|
      t.string :species
      t.integer :type
      t.integer :length
      t.integer :height
      t.integer :thickness
      t.integer :scarf_angle
      t.references :user, foreign_key: true
     end
  end
end
