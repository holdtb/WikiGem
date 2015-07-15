require_relative 'WikiParser'
require_relative 'WikiGetter'
require_relative 'SearchPrimer'
require_relative 'WikiPrinter'

class WikiSearch
  def self.find(search)
    search_str = SearchPrimer.prime(search)
    raw_json = WikiGetter.get_page_as_json(search_str)
    WikiParser.get_title(raw_json)
  end
end
