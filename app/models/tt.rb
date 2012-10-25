class Tt < ActiveRecord::Base
	include Enumerize
	belongs_to :user
	belongs_to :project

  attr_accessible :company_name, :addres, :complite_to, :user_id, :objective, :description, :project_id, :priority

  validates :company_name, :addres, :complite_to, :user_id, :objective, :description, :project_id, :priority, presence: true

  attr_accessible :image

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "50x50>" }

  enumerize :priority, :in => %w[low normal hight extremal], default: 'normal'
end
