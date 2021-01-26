require 'csv'
require 'echocat/book'
require 'echocat/magazine'
module Echocat
  class ImportData
    def from_csv
      import_books
      import_magazines
    end

    def import_books
      books_file_path = File.join(File.expand_path('../../data', __dir__), 'books.csv')
      return Echocat::Book.new({}) unless File.exist?(books_file_path)
      CSV.foreach(books_file_path, col_sep: ',', headers: true) do |row|
        params = {
          title: row["title"],
          isbn: row["isbn"],
          authors: row["authors"],
          description: row["description"]
        }
        Echocat::Book.new(params)
      end
    end

    def import_magazines
      magazines_file_path = File.join(File.expand_path('../../data', __dir__), 'books.csv')
      return Echocat::Magazine.new({}) unless File.exist?(magazines_file_path)
      CSV.foreach(magazines_file_path, col_sep: ',', headers: true) do |row|
        params = {
          title: row["title"],
          isbn: row["isbn"],
          authors: row["authors"],
          publishedAt: row["description"]
        }
        Echocat::Magazine.new(params)
      end
    end
  end
end
