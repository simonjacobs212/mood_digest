class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.integer :mood_id
      t.string :title
      t.string :artist
      t.string :genre
      t.string :img_url
      t.string :year
      t.text :description

      t.timestamps
    end
  end
end
