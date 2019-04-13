class Authorship < ApplicationRecord

  belongs_to :author
  belongs_to :book, dependent: :destroy

  validates :author_id, uniqueness: { scope: :book_id, message: "Same author can't be duplicated" }
  validates :author_id, :book_id, presence: true

end
