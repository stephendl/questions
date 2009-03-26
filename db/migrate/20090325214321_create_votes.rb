class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :question_id
      t.integer :person_id
      t.boolean	:up

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
