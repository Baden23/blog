class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_rich_text :body
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
