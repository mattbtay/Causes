class CreateOrganizations < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.string  :name, :null => false
      t.string :url
      t.string :phone
      t.string :fax
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end
end
