class Library < ActiveRecord::Base

  def self.search(search)
    find(:all, :conditions => ['title LIKE ?', "#{search}"])
  end

end
