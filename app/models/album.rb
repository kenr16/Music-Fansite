class Album < ActiveRecord::Base
  validates :name, :presence => true
  validates :artist, :presence => true
  validates :genre, :presence => true
  validates :image, :presence => true
end
