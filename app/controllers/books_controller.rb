class BooksController < ApplicationController
    
    def index
        @books=Book.all
    end

    def show
        @book=Book.find(params[:id])
    end

    def new
        @book=Book.new
        @subjects=Subject.all
        if params[:subject_id]
            @book.subject_id=params[:subject_id]
        end
    end
  
    def create
        @book = Book.new(book_param)
        if @book.save
           redirect_to books_path
        else
           @subjects = Subject.all
           flash[:errors] = @book.errors.full_messages
           render :action => 'new'
        end
    end

    def edit
        @book=Book.find(params[:id])
        @subjects=Subject.all
    end

    def book_param
        params.require(:book).permit(:title, :price, :subject_id, :description)
    end

    def update
        @book=Book.find(params[:id])

        if @book.update_attributes(book_param)
            redirect_to :action => 'show', :id => @book
        else 
            @subjects=Subject.all
            render :action => 'edit'
        end

    end

    def destroy
        @book=Book.find(params[:id])
        @book.destroy
        if params[:path] && params[:path] == "subject_index"
            redirect_to subjects_path
        elsif params[:path] && params[:path] == "subject_show"
            redirect_to subject_path(@book.subject)#If being viewed from a subject show page, then the book has a subject --> this is a safe call
        else
            redirect_to :action => 'index'
        end
    end


end
