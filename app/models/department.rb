class Department < ActiveRecord::Base
	has_many :users

  attr_accessible :title
  validates :title, :presence => :true
end
