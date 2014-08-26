require 'rubygems'
require 'bundler/setup'
require 'pdfreader'


# reader = PDF::Reader.new(ARGV[0])

reader = PDF::Reader.new('statuts_ex.pdf')

pages = reader.pages.map do |page|
  page.text
end

content = pages.join("\n")



