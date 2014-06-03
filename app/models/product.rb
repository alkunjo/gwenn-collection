class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :category_id, :description, :name, :picture, :code, :merk, :material, :size, :color, :price

  has_attached_file :picture, :styles => { :medium => "200x300>" },
	                  :url  => "/assets/images/:id/:basename.png",
	                  :path => ":rails_root/public/assets/images/:id/:basename.png"
end
