class RenameLibraryToBooks < ActiveRecord::Migration
  def self.up
    rename_table :libraries, :books
  end

  def self.down
    rename_table :books, :libraries
  end
end
