class AddDescriptionToCauses < ActiveRecord::Migration
  def self.up
  	add_column :causes, :description, :string
  end

  def self.down
  	remove_column :causes, :description
  end
end
