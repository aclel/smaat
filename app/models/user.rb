class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subjects, :dependent => :destroy

  accepts_nested_attributes_for :subjects, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
