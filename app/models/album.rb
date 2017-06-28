class Album < ActiveRecord::Base

  has_many :reviews


  scope :most_recent, -> { order(created_at: :desc)}
  scope :alphabetical, -> { order(name: :asc)}
  scope :genre, -> (genre_parameter) { where(genre: genre_parameter) }

  validates :name, :presence => true
  validates :artist, :presence => true
  validates :genre, :presence => true
  validates :image, :presence => true
end
