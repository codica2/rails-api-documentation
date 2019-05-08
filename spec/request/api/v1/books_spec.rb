require 'rails_helper'

RSpec.describe 'Book', type: :request do
  include Docs::V1::Books::Api

  let!(:books) { create_list(:book, 10) }

  let(:valid_params) do
    {
      book: {
        title: Faker::Book.title,
        destcription: Faker::ChuckNorris.fact
      }
    }
  end

  describe 'GET /books/' do
    include Docs::V1::Books::Index
    it 'returns all books', :dox do
      get '/api/v1/books'
      expect(response).to be_successful
      expect(json.count).to eq(books.count)
    end
  end

  describe 'GET /books/:id' do
    include Docs::V1::Books::Show
    it 'shows a book by id', :dox do
      book = books.sample
      get "/api/v1/books/#{book.id}"

      expect(response).to be_successful
      expect(json['id']).to eq(book.id)
    end
  end

  describe 'DELETE /books/:id' do
    include Docs::V1::Books::Destroy
    it 'deletes a book by id', :dox do
      book = books.sample
      delete "/api/v1/books/#{book.id}"
      expect(response).to be_successful
      expect(Book.find_by(id: book.id)).to eq(nil)
    end
  end

  describe 'POST /books/' do
    include Docs::V1::Books::Create
    it 'creates a book', :dox do
      post '/api/v1/books', params: valid_params
      expect(response).to be_successful
      expect(json).to have_key('id')
      expect(books.count).to be < Book.count
    end
  end

  describe 'PUT /books/:id' do
    include Docs::V1::Books::Update
    it 'updates a book by id', :dox do
      book = books.sample
      params = { book: { title: book.title.upcase } }
      put "/api/v1/books/#{book.id}", params: params
      expect(response).to be_successful
      expect(json['title']).to eq(book.title.upcase)
    end
  end

end
