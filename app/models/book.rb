class Book < ActiveRecord::Base
  belongs_to :publisher
  
  validates :name, :uniqueness => true, :presence => true
  validates :price, numericality: {only_integer: true, greater_than_or_equal_to:50}
  validates_presence_of [:year, :publisher_id]
  validates :weight, numericality: {greater_than_or_equal_to:0.01}
  
  has_many :comments, as: :commentable
  has_many :authors
  
  
  searchable do
    text :name, :description
  end
end
