class AddAuthorsBooksConstraints < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE `authors_books` ADD INDEX ( `author_id` )"
    execute "ALTER TABLE `authors_books` ADD INDEX ( `book_id` )"

    execute "ALTER TABLE `authors_books` ADD CONSTRAINT FOREIGN KEY (`author_id`)
             REFERENCES `authors`(`id`) ON DELETE CASCADE"
    execute "ALTER TABLE `authors_books` ADD CONSTRAINT FOREIGN KEY ( `book_id` )
             REFERENCES `books` (`id`) ON DELETE CASCADE"

  end

  def self.down
    execute "ALTER TABLE `authors_books` DROP FOREIGN KEY `authors_books_ibfk_1`"
    execute "ALTER TABLE `authors_books` DROP FOREIGN KEY `authors_books_ibfk_2`"

    execute "ALTER TABLE `authors_books` DROP INDEX `book_id`"
    execute "ALTER TABLE `authors_books` DROP INDEX `author_id`"
  end
end
