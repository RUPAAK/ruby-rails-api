class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def create
    book= Book.new(params_filter)

    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status:  :unproccessable_entity
    end
  end 

  def params_filter
    params.require(:book).permit(:title, :author)
  end

end
