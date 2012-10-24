class User < ActiveRecord::Base
	include Enumerize

	belongs_to :department
	has_many :tts
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :last_name, :first_name, :role, :department_id
  validates :email, :password, :last_name, :first_name, :role, :department_id, :presence => :true
  # attr_accessible :title, :body
  enumerize :role, :in => %w[admin user], default: 'user'
end
