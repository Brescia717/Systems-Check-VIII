class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
  validates :description
  validates :category

  has_many :reviews
end
