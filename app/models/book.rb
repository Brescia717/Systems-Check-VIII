class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
  validates :description, presence: true
  validates :category, presence: true

  has_many :reviews
end
