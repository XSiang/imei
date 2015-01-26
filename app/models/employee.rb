class Employee < ActiveRecord::Base

  validates_presence_of :name, message: '姓名'
  validates_numericality_of :department_id, message: '部門', allow_blank: true

  belongs_to :department

end
