class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.column :name, :string
      t.column :location, :string
    end
  end
end
