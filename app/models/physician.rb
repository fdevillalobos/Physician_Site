# == Schema Information
#
# Table name: physicians
#
#  id                      :integer          not null, primary key
#  name                    :string(255)
#  email                   :string(255)
#  country_id              :integer
#  created_at              :datetime
#  updated_at              :datetime
#  state_id                :integer
#  medical_school_id       :integer
#  NPI                     :integer
#  gender_id               :integer
#  birth                   :date
#  phone                   :integer
#  residency_hospital_id   :integer
#  affiliation_hospital_id :integer
#  credential_id           :integer
#  group_practice_id       :integer
#

class Physician < ActiveRecord::Base
  # We changed everything to belongs_to because has_one or has_many were not working.
  belongs_to :country
  belongs_to :state
  belongs_to :medical_school
  belongs_to :group_practice    # Not working
  # belongs_to :specialty            # Not working
  has_and_belongs_to_many :specialties
  belongs_to :gender
  belongs_to :credential
  # REFERENCING TWO COLUMNS IN THE SAME TABLE TO TWO DIFFERENT OBJECTS IN ANOTHER TABLE
  belongs_to :residency_hospital, class_name: "Hospital"
  belongs_to :affiliation_hospital, class_name: "Hospital"
end
