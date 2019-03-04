class BooksController < ApplicationController
  before_action :set_book, only: %i[show update destroy]

  def index
    @books = Book.all
    render json: @books
  end

  def show
    # @book = Book.find(params[:id])
    render json: @book
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # @book = Book.find(params[:id])

    @book.destroy
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
