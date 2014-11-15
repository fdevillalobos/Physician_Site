# == Schema Information
#
# Table name: physicians
#
#  id                       :integer          not null, primary key
#  name                     :string(255)
#  email                    :string(255)
#  street                   :string(255)
#  suite                    :string(255)
#  zip_code_id              :integer
#  state_id                 :integer
#  country_id               :integer
#  specialty_id             :integer
#  medical_school_id        :integer
#  NPI                      :integer
#  gender_id                :integer
#  birth_day                :integer
#  birth_month              :string(255)
#  birth_year               :integer
#  phone                    :integer
#  residency_hospital       :string(255)
#  affiliation_hospital     :string(255)
#  credential_id            :integer
#  medical_school_grad_year :integer
#  residency_grad_year      :integer
#  license_number           :integer
#  license_state            :string(255)
#  group_practice_id        :integer
#  medicare                 :boolean
#  created_at               :datetime
#  updated_at               :datetime
#

require 'rails_helper'

RSpec.describe Physician, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
