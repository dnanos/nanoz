class Author < ActiveRecord::Base
#   has_and_belongs_to_many :books # TODO
  
  has_many :books
  belongs_to :user
end
