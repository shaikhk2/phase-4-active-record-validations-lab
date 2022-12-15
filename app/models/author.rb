class Author < ApplicationRecord
    validates_presence_of :name, :phone_number
    validates :name, presence: true, uniqueness: true
    validates :phone_number, presence: true, length: { is: 10 }
end
