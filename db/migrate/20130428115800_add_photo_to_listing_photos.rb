class AddPhotoToListingPhotos < ActiveRecord::Migration
  def change
    add_attachment :listing_photos, :photo
  end
end
