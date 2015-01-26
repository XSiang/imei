class Batchnumber < ActiveRecord::Base

  validates_presence_of :product_id, message: '產品'
  validates_numericality_of :product_id, message: '產品'
  validates_presence_of :name, message: '批號'

  has_many :dailyreports
  belongs_to :product

end
