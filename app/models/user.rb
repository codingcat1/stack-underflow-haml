class User < ActiveRecord::Base
  validates :user_name, :presence => :true
  has_secure_password
  validates_uniqueness_of :user_name

  has_many :questions
  has_many :answers
end
