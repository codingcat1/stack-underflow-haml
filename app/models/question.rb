class Question < ActiveRecord::Base
  validates :description, :presence => true
  validates :topic, :presence => true

  belongs_to :user
  has_many :answers
end
