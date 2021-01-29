class CreateMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.integer :mood_id
      t.string :title
      t.string :artist
      t.string :genre
      t.string :url

      t.timestamps
    end
  end
end
