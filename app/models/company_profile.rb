class CompanyProfile < ActiveRecord::Base
  attr_accessible :header, :name

  has_attached_file :header, :styles => { :medium => "1150x200>" },
	                  :url  => "/assets/images/header/:basename.png",
	                  :path => ":rails_root/public/assets/images/header/:basename.png"
end
