class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :overall_score
      t.text :comment
      t.references :user, index: true
      t.references :physician, index: true

      t.timestamps
    end
  end
end
