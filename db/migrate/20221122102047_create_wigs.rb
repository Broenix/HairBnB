class CreateWigs < ActiveRecord::Migration[7.0]
  def change
    create_table :wigs do |t|

      t.timestamps
    end
  end
end
