class MakeLoginNullable < ActiveRecord::Migration
  def self.up
    change_column :users, :login, :string, :null => true
  end

  def self.down
    change_column :users, :login, :null => false
  end
end
