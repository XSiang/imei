class Dailyreport < ActiveRecord::Base

  validates_presence_of :use_date
  validates_presence_of :department_id
  validates_presence_of :batchnumber_id
  validates_presence_of :amount
  validates_presence_of :motion
  validates_numericality_of :department_id
  validates_numericality_of :batchnumber_id
  validates_numericality_of :amount

  belongs_to :department
  belongs_to :batchnumber

end
