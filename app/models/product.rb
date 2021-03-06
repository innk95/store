class Product < ActiveRecord::Base
validates :title, :description, :image_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
#validates :image_url, true, allow_blank: true, format: {
 #          with: %r{\.(gif|jpg|png)\Z}i,
  #         message: 'Формат картинки не подходит!'
   #       }
   has_many :line_items
  
   before_destroy :ensure_not_referenced_by_any_line_item

   private
   def ensure_not_referenced_by_any_line_item
      if line_items.empty?
         return true
      else
         errors.add(:base, ' существует товарная позиция')
         return false
     end
  end
end
