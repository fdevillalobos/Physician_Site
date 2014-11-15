# == Schema Information
#
# Table name: credentials
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :credential do
    name "MyString"
  end

end
