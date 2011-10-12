class Thing < ActiveRecord::Base
  belongs_to :user
  has_many :appreciations
  has_many :aspirations
  has_many :possessions
end
