class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.integer :music_id, null: false
      t.timestamps
    end
  end
end
