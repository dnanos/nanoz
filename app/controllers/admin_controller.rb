class AdminController < ApplicationController
  
  def moderator
    @books = Book.all
  end
end
