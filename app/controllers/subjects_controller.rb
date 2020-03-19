class SubjectsController < ApplicationController
  def index
    @subjects=Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject=Subject.new
  end

  def create
    @subject=Subject.new(subject_param)
    if @subject.save
      redirect_to subjects_path
    else
      flash[:errors] = @subject.errors.full_messages
      render :action => 'new'
    end
  end

  def subject_param
    params.require(:subject).permit(:name)
  end

  def edit
    @subject=Subject.find(params[:id])
  end

  def update
    @subject=Subject.find(params[:id])

    if @subject.update_attributes(subject_param)
      redirect_to :action => 'show', :id => @subject
    else
      render :action => 'edit'
    end
  end

  def destroy
    @subject=Subject.find(params[:id])
    @subject.destroy
    redirect_to :action => 'index'
  end

end
