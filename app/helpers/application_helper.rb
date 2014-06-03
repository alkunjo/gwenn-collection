module ApplicationHelper
	def precision(num)
  	return number_with_precision(num.to_f, :delimiter => ",", :separator => ".", :precision => 0)
  end
end
