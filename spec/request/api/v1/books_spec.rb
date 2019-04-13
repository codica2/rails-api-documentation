require 'rails_helper'

RSpec.describe 'Book', type: :request do

  let!(:books) { FactoryBot.create_list(:book, 10) }

  let(:valid_params) do
    {
      book: {
        title: Faker::Book.title,
        destcription: Faker::ChuckNorris.fact
      }
    }
  end

  describe 'GET /books/' do
    it 'Gets books' do
      get '/api/v1/books'
      expect(response).to be_success
      expect(json.count).to eq(books.count)
    end
  end

  describe 'GET /books/:id' do
    it 'Show the book by id' do
      book = books.sample
      get "/api/v1/books/#{book.id}"

      expect(response).to be_success
      expect(json['id']).to eq(book.id)
    end
  end

  describe 'DELETE /books/:id' do
    it 'Deletes the book by id' do
      book = books.sample
      delete "/api/v1/books/#{book.id}"
      expect(response).to be_success
      expect(Book.find_by(id: book.id)).to eq(nil)
    end
  end

  describe 'POST /books/' do
    it 'Create a book' do
      post '/api/v1/books', params: valid_params
      expect(response).to be_success
      expect(json).to have_key('id')
      expect(books.count).to be < Book.count
    end
  end

  describe 'PUT /books/:id' do
    it 'Update the book' do
      book = books.sample
      params = { book: { title: book.title.upcase } }
      put "/api/v1/books/#{book.id}", params: params
      expect(response).to be_success
      expect(json['title']).to eq(book.title.upcase)
    end
  end

end