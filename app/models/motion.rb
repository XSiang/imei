class Motion < ActiveRecord::Base

  validates_presence_of :name, message: '動作'
  validates_presence_of :department_id, message: '部門'
  validates_uniqueness_of :name, :scope => :department_id
  validates_numericality_of :department_id, message: '部門'

  has_many :product_motionships, :dependent => :destroy
  has_many :products, :through => :product_motionships
  belongs_to :department

end
