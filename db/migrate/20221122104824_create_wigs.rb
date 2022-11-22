class CreateWigs < ActiveRecord::Migration[7.0]
  def change
    create_table :wigs do |t|
      t.string :name
      t.string :description
      t.integer :renting_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
