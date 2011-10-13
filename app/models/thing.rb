class Thing < ActiveRecord::Base
  belongs_to :user
  has_many :appreciations
  has_many :aspirations
  has_many :possessions
  has_many :appreciators, :through => :appreciations, :source => :user
  has_many :owners, :through => :possessions, :source => :user
  has_many :aspiring_users, :through => :possessions, :source => :user
end
