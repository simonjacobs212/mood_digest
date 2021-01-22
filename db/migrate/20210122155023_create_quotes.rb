class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.integer :mood_id
      t.string :author
      t.text :body
      t.string :wiki_link

      t.timestamps
    end
  end
end
