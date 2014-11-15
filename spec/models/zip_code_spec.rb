# == Schema Information
#
# Table name: zip_codes
#
#  id         :integer          not null, primary key
#  zip        :integer
#  state_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe ZipCode, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
