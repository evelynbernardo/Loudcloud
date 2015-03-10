class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :song, index: true
      t.string :body

      t.timestamps null: false
    end
    add_foreign_key :comments, :songs
  end
end
