class CreateUserMoods < ActiveRecord::Migration[6.1]
  def change
    create_table :user_moods do |t|
      t.integer :user_id
      t.integer :mood_id
      t.integer :quote_id
      t.integer :music_id
      t.integer :art_id

      t.timestamps
    end
  end
end
