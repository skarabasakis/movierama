class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.integer :likes_count, null: false, default: 0, index: true
      t.integer :hates_count, null: false, default: 0, index: true

      t.timestamps
    end
  end
end
