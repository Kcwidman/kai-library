class Subjects < ActiveRecord::Migration[6.0]
  def self.up
    create_table :subjects do |t|
      t.column :name, :string
    end

<<<<<<< Updated upstream
    Subject.create name: "Physics"
    Subject.create name: "Mathematics"
    Subject.create name: "Chemistry"
    Subject.create name: "Psychology"
    Subject.create name: "Geograpy"
=======
    Subject.create :name => "Physics"
    Subject.create :name => "Mathematics"
    Subject.create :name => "Chemistry"
    Subject.create :name => "Psychology"
    Subject.create :name => "Geography"
    Subject.create :name => "Unknown"
>>>>>>> Stashed changes
  end

  def self.down
    drop_table :subjects
  end
end
