class Book < ApplicationRecord
    validates :author, presence: true, length: {minimum:3, maximum:100}
    validates :title, presence: true, length: {minimum:3, maximum:100}
end
