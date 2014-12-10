# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  overall_score :integer
#  comment       :text
#  user_id       :integer
#  physician_id  :integer
#  created_at    :datetime
#  updated_at    :datetime
#

FactoryGirl.define do
  factory :review do
    overall_score 1
comment "MyText"
user nil
physician nil
  end

end
