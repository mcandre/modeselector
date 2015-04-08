require 'version'

#
# Modeselector - extract mode line variables from source code files
#
module Modeselector
  #
  # Retrieve vim and emacs variables, if any
  #
  # Assumes file exists.
  #
  # @path a file path (String)
  #
  def self.modelines(path)
    results = []

    File.foreach(path).with_index do |line, line_number|
      if line =~ /(vim:\s)|(-\*- mode:.+-\*-)/
        results << [line_number + 1, line.chomp]
      end
    end

    results
  end
end
