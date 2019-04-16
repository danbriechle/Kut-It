class CreateScraps < ActiveRecord::Migration[5.2]
  def change
    create_table :scraps do |t|
      t.string :species
      t.integer :type
      t.integer :length
      t.integer :width
      t.integer :thickness
      t.references :user, foreign_key: true
    end
  end
end
