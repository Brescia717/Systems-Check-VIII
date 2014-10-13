class Review < ActiveRecord::Base
  validates :body, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }

  belongs_to :book
end
