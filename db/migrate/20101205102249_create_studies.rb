class CreateStudies < ActiveRecord::Migration
  def self.up
    create_table :studies do |t|
      t.references :user
      t.references :tag
      t.integer :result
      t.text :results
      t.timestamps
    end
  end

  def self.down
    drop_table :studies
  end
end
