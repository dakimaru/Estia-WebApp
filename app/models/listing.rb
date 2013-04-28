# == Schema Information
#
# Table name: listings
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  title          :string(255)
#  description    :text
#  property_type  :string(255)
#  bedrooms       :integer
#  bathrooms      :integer
#  address_line_1 :string(255)
#  address_line_2 :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip_code       :integer
#  country        :string(255)
#  user_id        :integer
#

class Listing < ActiveRecord::Base
  attr_accessible :title, :description, :property_type, :bedrooms, :bathrooms, :address_line_1,
                  :address_line_2, :city, :state, :country, :zip_code, :listing_photos_attributes
  belongs_to :user
  has_many :listing_photos, dependent: :destroy
  accepts_nested_attributes_for :listing_photos, :allow_destroy => true
  
  
  
  validates :user_id, presence: true
  validates :title, length: { minimum: 3, maximum: 50 }
  validates :description, length: { minimum: 10, maximum: 500 }
  validates :property_type, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :address_line_1, presence: true
  #validates :address_line_2, presence:true  #can be blank so no need for validation
  validates :city, length: { minimum: 2 }
  validates :state, presence: true
  validates :zip_code, length: { minimum: 5 }
  validates :country, length: { minimum: 3 }
  
  
end
