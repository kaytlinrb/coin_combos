require('rspec')
require('coin_combos')

describe('Fixnum#coin_combos') do
  it("one cent will return one penny") do
    expect((1).coin_combos).to(eq([0,0,0,1]))
  end
end
