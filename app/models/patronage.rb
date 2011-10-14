class Patronage < ActiveRecord::Base
  belongs_to :characteristic
  belongs_to :user
  
  def detail
    characteristic.detail
  end
  
  scope :by_user, lambda { |user_id| where :user_id => user_id }
end
