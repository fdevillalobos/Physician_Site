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

class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :physician
end
