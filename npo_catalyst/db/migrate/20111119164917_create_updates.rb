class CreateUpdates < ActiveRecord::Migration
  def self.up
    create_table :updates do |t|
      t.integer :user_id
      t.integer :cause_id
      t.text :update_text
      t.timestamps
    end
  end

  def self.down
    drop_table :updates
  end
end
