class Usetime < ActiveRecord::Base

  validates_presence_of :employee, message: '員工'
  validates_presence_of :start_time, message: '開始時間'
  validates_presence_of :end_time, message: '結束時間'
  validates_presence_of :deilyreport_id, message: '日報表'
  validates_numericality_of :deilyreport_id, message: '日報表'

  belongs_to :deilyreport

end
