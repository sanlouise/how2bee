class Article < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true, length: {minimum: 10, maximum: 60 }
  validates :description, presence: true, length: { minimum: 10, maximum: 100 }
  validates :content, presence: true
  validates :image, presence: true, length: {minimum: 10, maximum: 100 }

end