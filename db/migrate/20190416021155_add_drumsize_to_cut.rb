class AddDrumsizeToCut < ActiveRecord::Migration[5.2]
  def change
    add_column :cuts, :drumsize, :string
  end
end
