class ChangeColumnTypeIntegerToBigInt < ActiveRecord::Migration
  # below wasn't working (did not change schema.rb to bigint), also was not reversible
  # def change
  #   change_column :physicians, :phone, :bigint
  # end

  def up
    change_column :physicians, :phone, :string
  end

  def down
    change_column :physicians, :phone, :integer
  end


end
