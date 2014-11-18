class CreatePhysSpecJoinTable < ActiveRecord::Migration
  def change
    create_join_table :physicians, :specialties do |t|
      t.index [:physician_id, :specialty_id]
      t.index [:specialty_id, :physician_id]
    end
  end
end
