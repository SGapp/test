require_relative 'pdf_reader'

class Doc

  attr_reader :text

  def initialize(filename)
    @text = PdfReader.read(filename)
  end

  def article_number
    # TODO: return an array of strings representing the list of articles' titles
    @text.scan(/^(ARTICLE\s+[\d]+|Article\s+[\d]+)/)
  end

  def article_title
    @text.scan(/^(?:ARTICLE\s+[\d]+|Article\s+[\d]+)(?:\W|\s)+\s+(.+)/)
  end

end