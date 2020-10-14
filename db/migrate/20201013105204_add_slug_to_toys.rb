class AddSlugToToys < ActiveRecord::Migration[6.0]
  def change
    add_column :toys, :slug, :string
    add_index :toys, :slug, unique: true
  end
end
