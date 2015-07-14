require_relative 'WikiParser'
require_relative 'WikiGetter'
require_relative 'SearchPrimer'
require_relative 'WikiPrinter'

class WikiSearch
  def self.find(search)
    search_str = SearchPrimer.prime(search)
    text = WikiParser.get_title(WikiGetter.get_page_as_json(search_str))
    WikiPrinter.print(search, text)
  end
end