# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  sex        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Gender, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
