require 'version'

#
# Modeselector - extract mode line variables from source code files
#
module Modeselector
  #
  # Retrieve single line vim and emacs variables, if any
  #
  # Assumes file exists.
  #
  # @path a file path (String)
  #
  def self.single_line_modelines(path)
    results = []

    File.foreach(path).with_index do |line, line_number|
      if line =~ /(vim:\s)|(-\*- mode:.+-\*-)/
        results << [line_number + 1, line.chomp]
      end
    end

    results
  end

  #
  # Retrieve multiline modelines, if any
  #
  # Assumes file exists.
  #
  # @path a file path (String)
  #
  def self.multiline_modelines(path)
    results = []

    inside_multiline_modeline = false

    File.foreach(path).with_index do |line, line_number|
      if inside_multiline_modeline
        results << [line_number + 1, line.chomp]

        if line =~ /End:/
          inside_multiline_modeline = false
        end
      elsif line =~ /Local Variables:/
        results << [line_number + 1, line.chomp]

        inside_multiline_modeline = true
      end
    end

    results
  end

  #
  # Retrieve modelines, if any
  #
  # Assumes file exists.
  #
  # @path a file path (String)
  #
  def self.modelines(path)
    single_line_modelines(path) + multiline_modelines(path)
  end
end
