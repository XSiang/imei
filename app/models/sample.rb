class Sample < ActiveRecord::Base

  validates_presence_of :name, message: '樣品'

  has_many :sample_dailyreportships, :dependent => :destroy
  has_many :dailyreport, :through => :sample_dailyreportships
  
end
