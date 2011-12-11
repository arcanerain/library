class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end

  def transfer
    @title = "Transfer"
    @moved_to_mysql = []

    BookSqlite.connect
    BookMysql.connect

    #one by one
#    books_sqlite = BookSqlite.find :all
#    books_sqlite.each do |book_sqlite|
#      BookMysql.create!(:title => book_sqlite.title,
#                        :description => book_sqlite.description) &&
#                        @moved_to_mysql << book_sqlite.title if
#                        BookMysql.where({:title => book_sqlite.title}).empty?
#    end

    #three by three
    offset = 0
    completed = 0

    while completed == 0
      portion_checked = []
      portion = []
      BookSqlite.limit(3).offset(offset).map{ |book| portion <<
                                              {:title       => book.title,
                                               :description => book.description}
                                            }
      completed = 1 if portion.empty?

      #checking if the book already exists in mysql
      portion.each do |single_book|
        if BookMysql.where({ :title => single_book[:title]}).empty?
          portion_checked << single_book
          @moved_to_mysql << single_book[:title]
        end
      end

      BookMysql.create(portion_checked)
      offset += 3

    end


  end

end
