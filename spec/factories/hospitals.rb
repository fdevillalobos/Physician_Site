# == Schema Information
#
# Table name: hospitals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  state_id   :integer
#  ranking    :integer
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :hospital do
    name "MyString"
state nil
ranking 1
  end

end
