class HomeController < ApplicationController

  def index
    @books=Book.last(5).reverse
    @subjects=Subject.last(5).reverse
  end
end