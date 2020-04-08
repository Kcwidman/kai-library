class Library < ApplicationRecord
  has_many :copies
  has_many :books, through: :copies
end
