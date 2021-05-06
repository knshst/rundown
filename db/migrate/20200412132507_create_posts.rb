class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.string :content, null: false
      t.integer :start, null: false
      t.string :radio, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
# , default: ""