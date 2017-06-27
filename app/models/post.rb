class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable

  validates :title, :presence => true
  validates :url, :presence => true
end
