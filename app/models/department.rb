class Department < ActiveRecord::Base
	has_many :users

  attr_accessible :title
  validate :titile, :presence => :true
end
