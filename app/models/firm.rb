class Firm < ActiveRecord::Base

  validates_presence_of :name, message: '廠商'

  has_many :products

end
