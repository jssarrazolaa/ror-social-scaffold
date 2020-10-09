class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.references :user, index: true, foreign_key: true
      t.references :friend, index: true
      t.boolean :confirmed, default: false

      t.timestamps
    end
    add_foreign_key :friendship, :users, column: :friend_id
  end
end
