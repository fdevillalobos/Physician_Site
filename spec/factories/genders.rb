# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  sex        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :gender do
    type ""
  end

end
