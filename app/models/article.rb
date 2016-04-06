class Article < ActiveRecord::Base
  
  belongs_to :user

  validates :title, presence: true, uniqueness: true, length: {minimum: 10, maximum: 60 }
  validates :description, presence: true, length: { minimum: 130, maximum: 160 }
  validates :content, presence: true
  validates :image, presence: true, length: {minimum: 3, maximum: 100 }

end