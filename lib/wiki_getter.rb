require 'rest-client'
require 'uri'
class WikiGetter

  @end_point = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles="

  def self.get_page_as_json(search)
    RestClient.get "#{@end_point}#{search}"
  end
end
