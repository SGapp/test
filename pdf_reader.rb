require 'rubygems'
require 'bundler/setup'
require 'pdf-reader'


# reader = PDF::Reader.new(ARGV[0])

class PdfReader

  def self.read(filename)
    reader = PDF::Reader.new('statuts_ex.pdf')

    pages = reader.pages.map do |page|
      page.text
    end

    text = pages.join("\n")
    remove_line_breaks(text)
  end


  def self.remove_line_breaks(text)
    # text.gsub(/(?<![\.:])([\n\r]+)(?=[(A-Z|\d)])/m, "")
    text.gsub!(/(?<=[^\.:!?-])([\n]+)(?=([^A-Z\d]))/m, " ")
  end

end

