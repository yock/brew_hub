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
  attr_accessor :name, :email
  has_many :batches

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,  :presence => true, :length => { :maximum => 50 }
  validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => true
  
end
