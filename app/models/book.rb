class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors

  attr_accessible :title, :description

  validates :title, :presence => true

  def self.search(search)
    find(:all, :conditions => ['title LIKE ?', "#{search}"])
  end

end
