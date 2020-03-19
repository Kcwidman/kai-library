class Book < ApplicationRecord
  belongs_to :subject, optional: true
  validates_presence_of :title
  validates_numericality_of :price, allow_nil: true, message: "Make sure price is a number"
end
