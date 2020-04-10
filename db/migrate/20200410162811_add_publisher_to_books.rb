class AddPublisherToBooks < ActiveRecord::Migration[6.0]
  def change
    add_belongs_to :books, :publisher
  end
end
