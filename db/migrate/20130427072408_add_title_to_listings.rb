class AddTitleToListings < ActiveRecord::Migration
  def change
    add_column :listings, :title, :string
    add_column :listings, :description, :text
    add_column :listings, :property_type, :string
    add_column :listings, :bedrooms, :integer
    add_column :listings, :bathrooms, :integer
    add_column :listings, :address_line_1, :string
    add_column :listings, :address_line_2, :string
    add_column :listings, :city, :string
    add_column :listings, :state, :string
    add_column :listings, :zip_code, :integer
    add_column :listings, :country, :string
  end
end
