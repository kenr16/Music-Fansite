class Review < ActiveRecord::Base
  
  belongs_to :album

  validates :author, :presence => true
  validates :content, :presence => true
  validates :rating, :presence => true
end
