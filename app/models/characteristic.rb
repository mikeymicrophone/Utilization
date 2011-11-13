class Characteristic < ActiveRecord::Base
  belongs_to :detail
  belongs_to :thing
  has_many :patronages
  has_many :users, :through => :patronages
  
  attr_accessor :detail_text
  before_create :grab_detail
  
  validates_uniqueness_of :detail_id, :scope => :thing_id
  
  def grab_detail
    self.detail = Detail.find_or_create_by_text detail_text if detail_text.present?
  end
  
  def find_or_save
    detail = Detail.where(:text => detail_text).first
    c = Characteristic.where(:detail_id => detail.id, :thing_id => thing_id).first if detail
    c ? c : save && self
  end
end
