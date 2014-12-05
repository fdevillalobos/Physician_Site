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

require 'rails_helper'

RSpec.describe Review, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
