class CreateCopies < ActiveRecord::Migration[6.0]
  def change
    create_table :copies do |t|
      t.column :condition, :string
      t.column :checked_out, :boolean  #true for checked out, false for in stock
      t.column :book_id, :integer
      t.column :library_id, :integer
    end
  end
end
