class Book < ApplicationRecord
	# Great stuff 2!
    belongs_to :subject
    validates_presence_of :title
    validates_numericality_of :price, :message=>"Make sure price is a number"
end
