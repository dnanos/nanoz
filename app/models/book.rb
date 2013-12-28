class Book < ActiveRecord::Base
  belongs_to :publisher
  
  validates :name, :uniqueness => true, :presence => true
  validates :price, numericality: {greater_than_or_equal_to:50}
  validates_presence_of [:year, :publisher_id]
end
