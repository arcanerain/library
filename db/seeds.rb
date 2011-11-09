# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


#run rake db:migrate:reset first
#then rake db:seed

Book.delete_all
Author.delete_all

book1 = Book.create(:title => 'Beginning Ruby: From Novice to Professional, Second Edition', :description => 'This is the best introduction to Ruby for novice/beginner programmers. It lays down solid foundations for the language, while also nicely introducing the whole Ruby ecosystem. The author, Peter Cooper, is a well known figure in the Ruby community, and in this book he clearly demonstrates his ability to teach and communicate with newcomers. The second edition was released recently and includes information about Ruby 1.9, as well as lesser known web frameworks like Sinatra and Ramaze. This title is highly recommended for beginners.')
book2 = Book.create(:title => 'The Ruby Programming Language', :description => 'The Ruby Programming Language by David Flanagan and Yukihiro Matsumoto (matz) is, simply stated, the best book on Ruby available on the market today. It\'s accurate, in-depth, and uses a reference style that doesn\'t leave you with any doubts about the language. This book is co-authored by the inventor of Ruby (matz) and covers both Ruby 1.8 and 1.9. If you are an intermediate/experienced developer who is not afraid of understanding the subtleties of a new language, you can\'t go wrong with this book.')
book3 = Book.create(:title => 'Programming Ruby 1.9: The Pragmatic Programmers\' Guide', :description => 'This is the third edition of the so-called \"pickaxe\", the book most Rubyists have used to learn Ruby since 2000. This book acts as a tutorial and reference, and it\'s aimed at professional developers, as it\'s full of advanced concepts and theoretical explanations that go deeper into the \'why\' and \'how\' of Ruby and Agile programming. Not everyone\'s cup of a tea, but definitely well worth it if you are already quite familiar with object oriented programming.')
book4 = Book.create(:title => 'The Ruby Way (2nd Edition)', :description => 'The Ruby Way (2nd Edition) looks like a cookbook, and within its pages you\'ll find plenty of how-tos for several common tasks. It is therefore a valuable book if treated as a cookbook, but that\'s not its main purpose. The Ruby Way is about learning how to deal with a variety of programming tasks in an idiomatic manner; it\'s about taking your existing knowledge of Ruby and polishing it in order to apply it to both simple and complex scenarios. If it\'s true that in Ruby there are usually several ways of accomplishing something (however to a lesser extent than Perl\'s TIMTOWTDI principle), it\'s also true that most developers will point out that there is often a best way of doing it. This book is about learning to code that \"best way\" in Ruby, the Ruby Way. This is the book from which David Heinemeier Hansson, creator of Rails, learned most of what he knows about meta-programming and Ruby. I personally consider The Ruby Way 2nd Edition to be a definite must-have, it\'s chock-full of practical examples and advanced lessons.')
book5 = Book.create(:title => 'Ruby Cookbook', :description => 'The Ruby Cookbook is an invaluable tome that should have a sweet spot on your desktop. It provides more than 800 pages of idiomatic Ruby code recipes for common, highly interesting tasks. If you learn by doing, this book alone will be able to give you a great deal of insight into Ruby. Each recipe is throughly explained and will always be at hand, ready to help you out if you are stuck with a given problem. It\'s not the type of book that you read cover to cover (unless you want to), but it\'s a must have for Ruby programmers of all levels - and one that is bound to end up getting a lot use.')
book6 = Book.create(:title => 'Wicked Cool Ruby Scripts: Useful Scripts that Solve Difficult Problems', :description => 'Wicked Cool Ruby Scripts is a short book that includes 58 scripts for solving several tasks ranging from system administration to web parsing to scraping, as well as more algorithmic examples and cryptography. The book is very accessible. Each script is carefully explained in a step-by-step manner that can be fully understood by beginners. The examples provided are fun and easy to grasp (more experienced programmers may find some of them a little on the basic side). Overall this is an enjoyable and recommendable cookbook that can be read cover to cover quite quickly.')
book7 = Book.create(:title => 'The Well-Grounded Rubyist', :description => 'This is an incredible Ruby book. It\'s aimed at the beginner/intermediate crowd, yet it manages to go into the deep inner workings of Ruby. The goal of this book is to refine the knowledge and style of those who have already some understanding of the language and would like to bring their know-how to the next level. Highly recommended.')
book8 = Book.create(:title => 'Design Patterns in Ruby', :description => 'This short (and sweet) book can be read in a matter of a few days, but it concentrates tons of advanced Ruby idioms, \"best practices\" and design patterns into one handy tile. Though design patterns vary from language to language, a few patterns that are required in Java become part of the built-in features of the Ruby language and its standard library, as this book demonstrates. Design Patterns: Elements of Reusable Object-Oriented Software (aka The Gang of Four book) is an awesome book, but you will find that quite a few design pattern implementations are quite specific to C++ and similar languages; overall this book is also quite advanced and might be difficult for the average programmer. The idea behind \"Design Patterns in Ruby\" is to create a modern, smaller, and more Ruby-specific introduction to design patterns. It\'s an advanced text that explores all the fun stuff that Ruby provides programmers with, while still being accessible for those who are relatively new to the language. This is definitely not the best book for a complete and total beginner though. However this title is nothing short of amazing, and it should accommodate the needs of anyone with an ardent desire to learn the ins and outs of the power of Ruby\'s expressiveness.')
book9 = Book.create(:title => 'Ruby Best Practices', :description => 'The authors do a perfect job of describing this book, so I\'ll just quote them and add that this is an excellent second book on Ruby once you\'ve studied one of the canonical tutorial books and gained some practice. \"Ruby Best Practices aims to help Ruby developers from a wide range of skill levels improve their fundamental understanding of the language via exposure to the common practices and idioms that many seasoned Rubyists take for granted. With a strong emphasis on exploring real codebases, and an understanding that beautiful solutions depend heavily on context, this book lays out a clear road map to Ruby mastery for those who wish to pursue it.\"')


author1  = Author.create(:name => 'Foo')
author2  = Author.create(:name => 'Bar')
author3  = Author.create(:name => 'Baz')
author4  = Author.create(:name => 'Qux')
author5  = Author.create(:name => 'Quux')
author6  = Author.create(:name => 'Corge')
author7  = Author.create(:name => 'Grault')
author8  = Author.create(:name => 'Garply')
author9  = Author.create(:name => 'Waldo')
author10 = Author.create(:name => 'Fred')

book1.authors << author1 << author2
book2.authors << author3
book3.authors << author4 << author5 << author6
book4.authors << author1 << author7
book5.authors << author8 << author9
book6.authors << author10
book7.authors << author5 << author8 << author10
book8.authors << author2 << author3
book9.authors << author1
