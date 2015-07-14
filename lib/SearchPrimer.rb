class SearchPrimer
  def self.prime(search)
    srch = search.join("%20")
    srch.gsub! /"/, ''
    return srch
  end
end
