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

require 'rails_helper'

RSpec.describe Hospital, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
