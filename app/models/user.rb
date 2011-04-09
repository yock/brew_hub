# == Schema Information
# Schema version: 20110405004432
#
# Table name: users
#
#  id               :integer         not null, primary key
#  name             :string(255)
#  email            :string(255)
#  salt             :string(255)
#  secured_password :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class User < ActiveRecord::Base
  has_many :batches
end
