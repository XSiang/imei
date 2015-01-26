class Cartonreport < ActiveRecord::Base

  belongs_to :product_cartonship
  belongs_to :endreport

end
