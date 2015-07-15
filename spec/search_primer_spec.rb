require_relative '../lib/search_primer'

describe 'Search Primer' do

  describe '#prime' do
    context 'string with quotes' do
      it 'removes quotes from string' do
        srch = ["\"pizza\""]
        expect(SearchPrimer.prime(srch)).to eql "pizza"
      end
    end

    context 'string with spaces' do
      it 'replaces spaces with %20' do
        srch = ["Eiffel","Tower"]
        expect(SearchPrimer.prime(srch)).to eql "Eiffel%20Tower"
      end
    end
  end
end
