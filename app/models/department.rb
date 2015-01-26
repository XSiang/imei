class Department < ActiveRecord::Base

  validates_presence_of :name, message: '部門'

  has_many :motions
  has_many :employees
  has_many :dailyreports

end
