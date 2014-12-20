class AddScoreToPhysicians < ActiveRecord::Migration
  def change
    add_column :physicians, :score, :float
  end
end
