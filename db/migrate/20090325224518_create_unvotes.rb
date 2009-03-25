class CreateUnvotes < ActiveRecord::Migration
  def self.up
    create_table :unvotes do |t|
      t.integer :question_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :unvotes
  end
end
