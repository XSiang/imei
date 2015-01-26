class ProductMotionship < ActiveRecord::Base

  belongs_to :product
  belongs_to :motion

end
