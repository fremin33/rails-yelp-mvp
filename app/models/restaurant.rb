class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
end

#   name cannot be blank (FAILED - 3)
#   address cannot be blank (FAILED - 4)
#   category cannot be blank (FAILED - 5)
#   neptunian is not a valid category (FAILED - 6)
#   chinese is a valid category
#   italian is a valid category
#   japanese is a valid category
#   french is a valid category
#   belgian is a valid category
#   has many reviews
#   should destroy child reviews when destroying self

# Review
#   has a content
#   has a rating (stored as integer)
#   content cannot be blank (FAILED - 7)
#   rating cannot be blank (FAILED - 8)
#   parent restaurant cannot be nil
#   rating should be an integer (FAILED - 9)
#   rating should be a number between 0 and 5 (FAILED - 10)
