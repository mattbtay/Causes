class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.integer :user_id
      t.integer :cause_id
      t.decimal :amount, :precision => 8, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
