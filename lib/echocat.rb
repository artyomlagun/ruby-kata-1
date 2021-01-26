# frozen_string_literal: true
lib = File.expand_path('..', __FILE__ )
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'echocat/options'
require 'echocat/import_data'

module Echocat
  def self.run
    Echocat::ImportData.new.from_csv
    Echocat::Options.call
  end
end
