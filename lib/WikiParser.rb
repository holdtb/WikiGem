require 'json'
require 'pry'
class WikiParser
  def self.get_title(raw_json)
    parsed = JSON.parse(raw_json)
    parsed["query"]["pages"].each do |page|
      @lead_text = page[1]["extract"]
    end
    @lead_text
  end
end
