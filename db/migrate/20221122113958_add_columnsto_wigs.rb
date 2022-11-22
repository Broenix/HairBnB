class AddColumnstoWigs < ActiveRecord::Migration[7.0]
  def change
    add_column :wigs, :color, :string
    add_column :wigs, :lenght, :integer
  end
end
