class BooksController < ApplicationController
<<<<<<< Updated upstream
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @subjects = Subject.all
  end

  def book_params
    params.require(:books).permit(:title, :price, :subject_id, :description)
  end

  def create
    @book = Book.new(book_params)
    # Allow for empty subject, default to Physics
    if @book.subject.nil?
      @book.subject_id = 5 # default to Geography if no subject is given
    end
    if @book.save
      redirect_to books_path
    else
      @subjects = Subject.all
      flash[:errors] = @book.errors.full_messages
      render action: "new"
    end
  end

  def edit
    @book = Book.find(params[:id])
    @subjects = Subject.all
  end

  def book_param
    params.require(:book).permit(:title, :price, :subject_id, :description)
  end

  def update
    @book = Book.find(params[:id])

    if @book.update_attributes(book_param)
      redirect_to action: "show", id: @book
    else
      @subjects = Subject.all
      render action: "edit"
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to action: "index"
  end

  def show_subjects
    @subject = Subject.find(params[:id])
  end
=======
    
    def index
        @books=Book.all
    end

    def show
        @book=Book.find(params[:id])
    end

    def new
        @book=Book.new
        @subjects=Subject.all
    end

    def book_params
        params.require(:books).permit(:title, :price, :subject_id, :description)
    end
  
    def create
        @book = Book.new(book_params)
#Allow for empty subject, default to unknown
        if @book.subject.nil?
           @book.subject_id=6#default to Unkown subject if no subject is given
        end
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
        Book.find(params[:id]).destroy
        redirect_to :action => 'index'
    end

    def show_subjects
        @subject = Subject.find(params[:id])
    end


>>>>>>> Stashed changes
end
