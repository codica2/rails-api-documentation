# frozen_string_literal: true

module Api

  module V1

    class BooksController < ApplicationController

      before_action :set_book, only: %i[show update destroy]

      def_param_group :book do
        param :id, :number, desc: 'Id of book'
        param :book, Hash do
          param :title, String, required: true, desc: 'Title of book', only_in: :request
          param :description, String, desc: 'Description of book', only_in: :request
        end
        property :title, String,   desc: 'Title of book'
        property :descriprion, String,   desc: 'Description of book'
        property :created_at, String,   desc: 'Date of the book creation'
        property :updated_at, String,   desc: 'Last time the book was updated'
      end

      api :GET, '/books/', 'Shows all books'
      returns array_of: :book, code: 200, desc: 'All books'
      def index
        books = Book.all
        render json: books
      end

      api :POST, '/books/', 'Create a new book'
      returns :book, code: 200, desc: 'Created book'
      param_group :book

      def create
        book = Book.new(book_params)
        if Book.new(book_params).save
          render json: book, status: :ok
        else
          render json: book.errors, status: :unprocessable_entity
        end
      end

      api :GET, '/books/:id', 'Shows the requested book'
      param :id, :number, desc: 'Id of the book', required: true
      returns :book, code: 200, desc: 'Requested book'
      error code: 404, desc: 'Not Found'
      def show
        render json: @book
      end


      api :PUT, '/books/:id', 'Updates the requested book'
      param_group :book
      returns :book, code: 200, desc: 'Updated book'
      error code: 404, desc: 'Not Found'
      def update
        if @book.update(book_params)
          render json: @book, status: :ok
        else
          render json: @book.errors, status: :unprocessable_entity
        end
      end

      api :DELETE, '/books/:id', 'Deletes the requested book'
      returns code: 200
      param :id, :number, desc: 'Id of the book', required: true
      def destroy
        @book.destroy
        render json: @book, status: :ok
      end

      private

      def set_book
        @book = Book.find(params[:id])
      end

      def book_params
        params.require(:book).permit(:title, :description)
      end

    end

  end

end
