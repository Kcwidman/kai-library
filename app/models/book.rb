class Book < ApplicationRecord
  has_and_belongs_to_many :subjects, optional: true
  belongs_to :publisher, optional: true
  has_many :copies
  has_many :libraries, through: :copies
  has_one_attached :cover
  validates_presence_of :title
  validates_numericality_of :price, allow_nil: true, message: "Make sure price is a number"

  def subjects_list
    subjects.map(&:name).to_sentence
  end
end
