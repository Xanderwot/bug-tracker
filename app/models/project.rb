class Project < ActiveRecord::Base
	has_many :tts
  attr_accessible :title
  validates :title, :presence => :true
end
