class Books < ActiveRecord::Migration[6.0]
  def self.up
    create_table :books do |t|
      t.column :title, :string, null: false
      t.column :price, :decimal, precision: 8, scale: 2
      t.column :subject_id, :integer
      t.column :description, :text
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :books
  end
end
