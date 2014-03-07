require('rspec')
require('number_words')

describe('group_three')  do
  it("returns the word version of a number under 20") do
    group_three(14).should(eq("fourteen"))
  end
  it("returns the word version of a number up to 100") do
  group_three(98).should(eq("ninety eight"))
  end
  it('returns the word version of a number up to 1000') do
  group_three(998).should(eq("ninehundred ninety eight" ))
  end
end

describe ('number_seperator') do
  it('seperates large numbers into groups of three digits') do
  number_seperator(456987).should(eq([456, 987]))
  end
end
