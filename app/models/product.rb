class Product < ActiveRecord::Base
validates :title, :description, :image_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
#validates :image_url, true, allow_blank: true, format: {
 #          with: %r{\.(gif|jpg|png)\Z}i,
  #         message: 'Формат картинки не подходит!'
   #       }

end