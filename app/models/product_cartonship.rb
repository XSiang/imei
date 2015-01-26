class ProductCartonship < ActiveRecord::Base

  belongs_to :carton
  belongs_to :product

end
