# == Schema Information
# Schema version: 20110405004432
#
# Table name: batches
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  user_id     :integer
#  style_id    :integer
#  brew_date   :date
#  rack_date   :date
#  bottle_date :date
#  comments    :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Batch < ActiveRecord::Base
  belongs_to :user
end
