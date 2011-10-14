class Detail < ActiveRecord::Base
  belongs_to :user
  has_many :characteristics
  has_many :things, :through => :characteristics
end
