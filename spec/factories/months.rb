# == Schema Information
#
# Table name: months
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :month do
    name "MyString"
  end

end
