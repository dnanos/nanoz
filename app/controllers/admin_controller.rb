class AdminController < ApplicationController
  
  def moderator
    @books = Book.all
  end
  
  def admin
  end
end
