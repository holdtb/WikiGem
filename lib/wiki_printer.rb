class WikiPrinter
  def self.print(search, text)
    puts "#{search.join(" ").capitalize}:"
    puts text
  end
end
