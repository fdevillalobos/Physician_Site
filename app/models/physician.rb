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
#  latitude                :float
#  longitude               :float
#  street                  :text
#  suite                   :text
#  city                    :text
#

class Physician < ActiveRecord::Base

  def self.search(query)
    if Rails.env.development?
      # query[:name]
      # where("name LIKE ? OR country_id LIKE ?", "%#{query}%", "%#{query}%")
      # Physician.joins(:country).where("countries.name like ?", country)
      # joins(:country).where("countries.name like ? or physicians.name LIKE ?", "%#{query}%", "%#{query}%")

      @no_join = Physician.where("name LIKE ? OR NPI LIKE ? OR phone LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
      @join = Physician.joins(:country, :state, :medical_school, :gender, :credential, :group_practice, :residency_hospital, :affiliation_hospital, :specialties)
                .where("countries.name LIKE ? OR states.name LIKE ? OR medical_schools.name LIKE ? OR genders.sex LIKE ? OR credentials.name LIKE ? OR group_practices.name LIKE ? OR hospitals.name LIKE ? OR affiliation_hospitals_physicians.name LIKE ? OR specialties.name LIKE ?",
                       "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
    else
      @no_join = Physician.where("name ILIKE ? OR CAST('NPI' AS TEXT) LIKE ? OR CAST(phone AS TEXT) LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
      @join = Physician.joins(:country, :state, :medical_school, :gender, :credential, :group_practice, :residency_hospital, :affiliation_hospital, :specialties)
                  .where("countries.name ILIKE ? OR states.name ILIKE ? OR medical_schools.name ILIKE ? OR genders.sex ILIKE ? OR credentials.name ILIKE ? OR group_practices.name ILIKE ? OR hospitals.name ILIKE ? OR affiliation_hospitals_physicians.name ILIKE ? OR specialties.name ILIKE ?",
                         "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
    end

    return (@no_join + @join).uniq #there has got to be a better and faster way of getting a unique answer to the user's query
  end

  def self.advsearch(params)
    if Rails.env.development?
      where("physicians.name LIKE ? AND country_id LIKE ? AND state_id LIKE ? AND medical_school_id LIKE ? AND gender_id LIKE ? AND \
(residency_hospital_id LIKE ? OR affiliation_hospital_id LIKE ?)",
                               "%#{params[:advsearch]}%", "%#{params[:country][:country_id]}%", "%#{params[:state][:state_id]}%",
                               "%#{params[:medical_school][:medical_school_id]}%", "%#{params[:gender][:gender_id]}%",
                               "%#{params[:hospital][:hospital_id]}%", "%#{params[:hospital][:hospital_id]}%"
      ).joins(:specialties).where("specialties.name LIKE ?", "%#{params[:specialtysearch]}%").uniq
    else
      where("physicians.name ILIKE ? AND CAST(country_id AS TEXT) LIKE ? AND CAST(state_id AS TEXT) LIKE ? AND CAST(medical_school_id AS TEXT) \
LIKE ? AND CAST(gender_id AS TEXT) LIKE ? AND (CAST(residency_hospital_id AS TEXT) LIKE ? OR CAST(affiliation_hospital_id AS TEXT) LIKE ?)",
            "%#{params[:advsearch]}%", "%#{params[:country][:country_id]}%", "%#{params[:state][:state_id]}%",
            "%#{params[:medical_school][:medical_school_id]}%", "%#{params[:gender][:gender_id]}%",
            "%#{params[:hospital][:hospital_id]}%", "%#{params[:hospital][:hospital_id]}%"
      ).joins(:specialties).where("specialties.name ILIKE ?", "%#{params[:specialtysearch]}%").uniq
    end
  end


  # We changed everything to belongs_to because has_one or has_many were not working.
  belongs_to :country
  belongs_to :state
  belongs_to :medical_school
  belongs_to :group_practice                  # Not working
  has_and_belongs_to_many :specialties        # Needs a joint table
  belongs_to :gender
  belongs_to :credential
  # REFERENCING TWO COLUMNS IN THE SAME TABLE TO TWO DIFFERENT OBJECTS IN ANOTHER TABLE
  belongs_to :residency_hospital, class_name: "Hospital"
  belongs_to :affiliation_hospital, class_name: "Hospital"

  has_many :reviews

  # Validations
  # validates_presence_of :gender_id, :credential_id, :name # this won't check if gender_id is valid (i.e. exists in genders table)
  validates_presence_of :gender_id, :name
  validates :credential, presence: {message: "The credential does not exist"}
  # validates_uniqueness_of :email
  # Fairly nice Regex email validator that will ensure that your email has the correct formatting and at least could exist.
  # validates_format_of :email, :with => /[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)\b/, :on => :create

  # Geocoder for Google Maps
  # Retrieve coordinates from field: address
  # after_validation :geocode, :unless => lambda { |obj| obj.street.nil? AND obj.city.nil? AND obj.state.name.nil? AND obj.country.name.nil? }
  geocoded_by :address                # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def address
    if country.nil?
      ctry = ''
    else
      ctry = country.name
    end

    if state.nil?
      sta = ''
    else
      sta = state.name
    end

    [street, city, sta, ctry].compact.join(', ')
  end

end
