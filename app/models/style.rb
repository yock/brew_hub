# == Schema Information
# Schema version: 20110405004432
#
# Table name: styles
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Style < ActiveRecord::Base
  has_many :batches
end
