class RemoveBookIdFromAuthors < ActiveRecord::Migration
  def self.up
    remove_column :authors, :library_id
  end

  def self.down
    add_column :authors, :library_id, :integer
  end
end
