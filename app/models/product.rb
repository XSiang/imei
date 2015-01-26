class Product < ActiveRecord::Base

  validates_presence_of :name, message: '產品'
  validates_numericality_of :capacity, message: '容量'
  validates_numericality_of :firm_id, message: '廠商', allow_blank: true

  has_many :batchnumbers, :dependent => :destroy
  has_many :product_motionships, :dependent => :destroy
  has_many :motions, :through => :product_motionships
  has_many :product_cartonships, :dependent => :destroy
  has_many :cartons, :through => :product_cartonships
  belongs_to :firm

end
