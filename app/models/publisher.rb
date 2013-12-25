class Publisher < ActiveRecord::Base
  has_many :book

  validates :name, :presence => true, :uniqueness => true
end
