class BikeRoute < ActiveRecord::Base
  belongs_to :district
  # belongs_to :users
  # has_many :comments 
  
  # geocoded_by :from, :latitude  => :from_lat, :longitude => :from_lng   # can also be an IP address
  # geocoded_by :to, :latitude  => :to_lat, :longitude => :to_lng
  # after_validation :geocode          # auto-fetch coordinates

  # def geocoder_lookup
  #   if :from
  #     :esri
  #   else
  #     :google
  # end




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
