class CreateGroupPractices < ActiveRecord::Migration
  def change
    create_table :group_practices do |t|
      t.string :name
      t.integer :group_id
      t.references :speciality, index: true

      t.timestamps
    end
  end
end
