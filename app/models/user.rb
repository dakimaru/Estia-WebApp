# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  first_name            :string(255)
#  last_name             :string(255)
#  email                 :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  password_digest       :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#

class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  
  validates_uniqueness_of :email
  
end
