class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.text :title
      t.text :body
      t.integer :book_id
      t.integer :author_id

      t.timestamps
    end
  end
end
