# == Schema Information
#
# Table name: group_practices
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  group_id      :integer
#  speciality_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

FactoryGirl.define do
  factory :group_practice do
    name "MyString"
id 1
speciality nil
  end

end
