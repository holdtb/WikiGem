require_relative 'wiki_parser'
require_relative 'wiki_getter'
require_relative 'search_primer'
require_relative 'wiki_printer'

class WikiSearch
  def self.find(search)
    search_str = SearchPrimer.prime(search)
    raw_json = WikiGetter.get_page_as_json(search_str)
    WikiParser.get_title(raw_json)
  end
end
