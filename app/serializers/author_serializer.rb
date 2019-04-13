# frozen_string_literal: true

class AuthorSerializer < ActiveModel::Serializer

  attributes :id, :name
  has_many :books, through: :authorships

end
