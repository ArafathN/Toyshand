class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :availability, default: true
      t.string :condition
      t.string :category

      t.timestamps
    end
  end
end
