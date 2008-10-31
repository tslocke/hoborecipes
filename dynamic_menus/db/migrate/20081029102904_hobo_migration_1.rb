class HoboMigration1 < ActiveRecord::Migration
  def self.up
    add_column :projects, :country_id, :integer
    add_column :projects, :city_id, :integer
  end

  def self.down
    remove_column :projects, :country_id
    remove_column :projects, :city_id
  end
end
