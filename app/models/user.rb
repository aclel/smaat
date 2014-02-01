class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subjects, :dependent => :destroy

  validates_presence_of :first_name, :last_name, :form, :parent_name, :contact

  accepts_nested_attributes_for :subjects, :reject_if => lambda { |a| a[:name, :description].blank? }, :allow_destroy => true
end
