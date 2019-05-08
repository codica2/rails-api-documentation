require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Books' do
  let!(:books) { create_list(:book, 10) }

  get '/api/v1/books' do
    example_request 'all books' do
      expect(status).to eq(200)
    end
  end

  delete '/api/v1/books/:id' do
    let(:id) { books.sample.id }
    example_request 'delete a book' do
      expect(status).to eq(200)
    end
  end

  post '/api/v1/books' do
  end

end

