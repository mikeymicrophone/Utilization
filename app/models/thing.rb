class Thing < ActiveRecord::Base
  belongs_to :user
  has_many :characteristics
  has_many :details, :through => :characteristics
  has_many :patronages, :through => :characteristics
  has_many :appreciations
  has_many :aspirations
  has_many :possessions
  has_many :appreciators, :through => :appreciations, :source => :user
  has_many :owners, :through => :possessions, :source => :user
  has_many :aspiring_users, :through => :possessions, :source => :user
  
  scope :alphabetical, order('name')
  scope :newest, order('created_at desc')
  scope :by_user, order('user_id desc')
  scope :shuffled, order('random()')
end
