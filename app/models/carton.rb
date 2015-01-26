class Carton < ActiveRecord::Base

  validates_presence_of :name, message: '紙箱'

  has_many :product_cartonships, :dependent => :destroy
  has_many :products, :through => :product_cartonships

end
