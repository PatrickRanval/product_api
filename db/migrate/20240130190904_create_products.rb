class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.references :category, foreign_key: true, optional: true
      
      t.timestamps
    end
  end
end
