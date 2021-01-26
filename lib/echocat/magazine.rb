module Echocat
  class Magazine

    class << self
      attr_accessor :all

      def all
        @all ||= []
      end
    end

    attr_accessor :title, :isbn, :authors, :publishedAt

    def initialize
      @title = title
      @isbn = isbn
      @authors = authors
      @publishedAt = publishedAt

      Magazine.all << self
    end
  end
end
