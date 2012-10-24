class Tt < ActiveRecord::Base
	belongs_to :user, :project
  attr_accessible :company_name, :addres, :complite_to, :user_id, :objective, :description, :picture, :project_id
  validates :company_name, :addres, :complite_to, :user_id, :objective, :description, :picture, :project_id, :presence => :true

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
