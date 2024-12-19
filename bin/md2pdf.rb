#!/usr/bin/env ruby

require 'fileutils'

# Function to convert Markdown to PDF
def convert_markdown_to_pdf(input_file, output_file = nil)
  unless File.exist?(input_file)
    puts "Error: The file '#{input_file}' does not exist."
    exit(1)
  end

  output_file ||= File.basename(input_file, File.extname(input_file)) + '.pdf'

  # Build the Pandoc command
  command = "pandoc #{input_file} -o #{output_file} --pdf-engine=xelatex"

  # Run the command and capture any errors
  puts "Converting '#{input_file}' to '#{output_file}'..."
  result = system(command)

  if result
    puts "Conversion successful! PDF saved to '#{output_file}'."
  else
    puts "Error: Failed to convert '#{input_file}' to PDF."
    exit(1)
  end
end

# Main script logic
if ARGV.length < 1
  puts "Usage: #{$PROGRAM_NAME} <markdown_file> [output_pdf]"
  exit(1)
end

input_file = ARGV[0]
output_file = ARGV[1]

convert_markdown_to_pdf(input_file, output_file)
