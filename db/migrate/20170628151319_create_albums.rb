class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.column :name, :string
      t.column :artist, :string
      t.column :genre, :string
      t.column :image, :string

      t.timestamp
    end
  end
end
