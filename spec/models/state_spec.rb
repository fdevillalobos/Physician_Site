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

require 'rails_helper'

RSpec.describe State, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
