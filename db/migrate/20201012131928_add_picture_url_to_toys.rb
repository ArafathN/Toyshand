class AddPictureUrlToToys < ActiveRecord::Migration[6.0]
  def change
    add_column :toys, :picture_url, :string
  end
end
