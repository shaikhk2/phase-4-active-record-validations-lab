class Post < ApplicationRecord
    validates_presence_of :title, :content, :summary, :category
    validates :title, presence: true, length: { minimum: 4 }, exclusion: { in: ["True Facts"] }
    validates :content, presence: true, length: { minimum: 250 }
    validates :summary, presence: true, length: { maximum: 250 }
    validates :category, presence: true, inclusion: { in: ['Fiction', 'Non-Fiction'] }
end
