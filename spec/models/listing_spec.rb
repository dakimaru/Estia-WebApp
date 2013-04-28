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
#

require 'spec_helper'

describe Listing do
  pending "add some examples to (or delete) #{__FILE__}"
end
