class BookSqlite < Book
  class << self
    def connect
      establish_connection :sqlite
    end
  end
end