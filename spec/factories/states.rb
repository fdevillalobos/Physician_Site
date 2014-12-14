# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  iso        :string(255)
#  country_id :integer
#

FactoryGirl.define do
  factory :state do
    name "MyString"
  end

end
