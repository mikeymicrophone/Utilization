class Expertise < ActiveRecord::Base
  belongs_to :thing
  belongs_to :user
  
  validates_uniqueness_of :thing_id, :scope => :user_id
end
