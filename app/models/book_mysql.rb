class BookMysql < Book
  class << self
    def connect
      establish_connection :mysql
    end
  end
end