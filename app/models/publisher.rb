class Publisher < ActiveRecord::Base
  has_many :book
  
  validates :name, :uniqueness => true, :presence => true
end
