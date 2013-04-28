# == Schema Information
#
# Table name: listing_photos
#
#  id                 :integer          not null, primary key
#  listing_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class ListingPhoto < ActiveRecord::Base

  attr_accessible :photo
  belongs_to :listing
  
  has_attached_file :photo,
                    :styles => {
                      :thumb => '150x150#',
                      :medium => '300x300>',
                      :large => '600x600>'
                    }
  
end
