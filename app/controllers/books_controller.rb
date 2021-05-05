class BooksController < ApplicationController
  
def show
  @book = Book.find(params[:id])
end

def index
  @books = Book.all
  @book = Book.new
end

def create
  book = Book.new(book_params)
  book.save
  redirect_to book_path(book.id)
end

def edit
  @book = Book.find(params[:id])
end

def update
  book = Book.find(params[:id])
  book.update(blog_params)
  redirect_to blog_path(blog)
end

private
def book_params
  params.require(:book).permit(:title, :body)
end


end
