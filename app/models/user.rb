class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subjects, :dependent => :destroy

  validates_presence_of :first_name, :last_name, :form, :parent_name, :contact

  accepts_nested_attributes_for :subjects, :reject_if => :all_blank, :allow_destroy => true

  def email_required?
  	false
	end

	def email_changed?
	  false
	end
end
