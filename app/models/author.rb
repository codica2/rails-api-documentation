class Author < ApplicationRecord

  validates :name, presence: true

  has_many :authorships, dependent: :destroy
  has_many :books, through: :authorships, dependent: :destroy

end
