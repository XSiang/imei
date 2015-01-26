class Endreport < ActiveRecord::Base

  validates_presence_of :firm, message: '廠商'
  validates_presence_of :product, message: '產品'
  validates_presence_of :batch_number, message: '批號'
  validates_presence_of :start_date, message: '開始時間'
  validates_presence_of :end_date, message: '結束時間'
  validates_presence_of :total_time, message: '總工時'
  validates_presence_of :amount, message: '數量'
  validates_numericality_of :amount, message: '數量'

  has_many :cartonreports, :dependent => :destroy
  has_many :product_catonships, :through => :cartonreports

end
