class Book < ActiveRecord::Base
  belongs_to :publisher
  
  validates :name, :presence => true, :uniqueness => true
  validates_presence_of[:year, :pages, :weight]
end
