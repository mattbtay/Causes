class CreateCauses < ActiveRecord::Migration
  def self.up
    create_table :causes do |t|
      t.integer :user_id, :null => false
      t.integer :organization_id, :null => false
      t.string  :name, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :causes
  end
end
