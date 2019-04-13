# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer

  attributes :id, :title, :description
  has_many :authors, through: :authorships

end
