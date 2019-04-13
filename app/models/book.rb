class Book < ApplicationRecord

  validates :title, presence: true

  has_many :authorships, dependent: :nullify
  has_many :authors, through: :authorships

end
