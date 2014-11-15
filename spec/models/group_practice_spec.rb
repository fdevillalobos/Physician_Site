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

require 'rails_helper'

RSpec.describe GroupPractice, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
