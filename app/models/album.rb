class Album < ActiveRecord::Base

  has_many :reviews


  scope :most_recent, -> { order(created_at: :desc)}

  validates :name, :presence => true
  validates :artist, :presence => true
  validates :genre, :presence => true
  validates :image, :presence => true
end
