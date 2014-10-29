class BikeRoute < ActiveRecord::Base
  belongs_to :district
  
  # geocoded_by :from, :latitude  => :lat, :longitude => :lng   # can also be an IP address
  # after_validation :geocode          # auto-fetch coordinates


  # Validations
  # validates :name, :from, :to, presence: true, length: { minimum: 3 }
  # validates :name, uniqueness: { case_sensitive: false }
  # validates :from_district, :to_district, :description, :difficulty, presence: true
  # validates :from_district, format: { without: /==/,
  #   message: "Please choose one district from the list" }
  # validates_each :mtb do |record, attr, value|
  #   record.errors.add attr, 'is invalid.' if value != true && value != false
  # end

end
