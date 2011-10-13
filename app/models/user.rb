class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  
  has_many :appreciations
  has_many :appreciated_things, :through => :appreciations, :source => :thing
  has_many :possessions
  has_many :possessed_things, :through => :possessions, :source => :thing
  has_many :aspirations
  has_many :aspired_things, :through => :aspirations, :source => :thing
  
  def name
    first_name.to_s + ' ' + last_name.to_s
  end
  
  def appreciates? thing
    appreciated_things.include? thing
  end
  
  def possesses? thing
    possessed_things.include? thing
  end
  
  def aspires_to_use? thing
    aspired_things.include? thing
  end
end
