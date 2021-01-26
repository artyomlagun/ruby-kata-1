module Echocat
  class Book

    class << self
      attr_accessor :all

      def all
        @all ||= []
      end
    end

    attr_accessor :title, :isbn, :authors, :description

    def initialize
      @title = title
      @isbn = isbn
      @authors = authors
      @description = description

      Book.all << self
    end
  end
end
