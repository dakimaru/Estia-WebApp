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

require 'spec_helper'

describe ListingPhoto do
  pending "add some examples to (or delete) #{__FILE__}"
end
