class Category < ActiveRecord::Base
	has_many :products, :class_name => "Product"
	
  attr_accessible :description, :name
end
