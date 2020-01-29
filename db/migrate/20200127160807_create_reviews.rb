class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :writer
      t.integer :rating
      t.string :title
      t.string :role

      t.timestamps
    end
  end
end
