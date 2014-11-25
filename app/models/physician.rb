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

  def self.search(query)
    # query[:name]
    # where("name LIKE ? OR country_id LIKE ?", "%#{query}%", "%#{query}%")
    # Physician.joins(:country).where("countries.name like ?", country)
    # joins(:country).where("countries.name like ? or physicians.name LIKE ?", "%#{query}%", "%#{query}%")

    @no_join = Physician.where("name LIKE ? OR NPI LIKE ? OR phone LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
    @join = Physician.joins(:country, :state, :medical_school, :gender, :credential, :group_practice, :residency_hospital, :affiliation_hospital, :specialties)
                .where("countries.name LIKE ? OR states.name LIKE ? OR medical_schools.name LIKE ? OR genders.sex LIKE ? OR credentials.name LIKE ? OR group_practices.name LIKE ? OR hospitals.name LIKE ? OR affiliation_hospitals_physicians.name LIKE ? OR specialties.name LIKE ?",
                       "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
    return @no_join + @join
  end


  # We changed everything to belongs_to because has_one or has_many were not working.
  belongs_to :country
  belongs_to :state
  belongs_to :medical_school
  belongs_to :group_practice              # Not working
  # belongs_to :specialty                 # Not working
  has_and_belongs_to_many :specialties
  belongs_to :gender
  belongs_to :credential
  # REFERENCING TWO COLUMNS IN THE SAME TABLE TO TWO DIFFERENT OBJECTS IN ANOTHER TABLE
  belongs_to :residency_hospital, class_name: "Hospital"
  belongs_to :affiliation_hospital, class_name: "Hospital"

  # Validations
  validates_presence_of :gender_id, :credential_id, :name
  validates_uniqueness_of :email
  # Fairly nice Regex email validator that will ensure that your email has the correct formatting and at least could exist.
  validates_format_of :email, :with => /[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)\b/, :on => :create
end
