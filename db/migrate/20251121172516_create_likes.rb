class CreateLikes < ActiveRecord::Migration[7.2]
  def change
    create_table :likes do |t|
      t.references :liker, null: false, foreign_key: { to_table: :users }
      t.references :liked_post, null: false, foreign_key: { to_table: :posts }

      t.timestamps
    end
    add_index :likes, [ :liker_id, :liked_post_id ], unique: true
  end
end
