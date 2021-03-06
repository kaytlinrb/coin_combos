require('rspec')
require('coin_combos')

describe('Fixnum#coin_combos') do
  it("one cent will return one penny") do
    expect((1).coin_combos).to (eq("[0, 0, 0, 1]"))
  end
  it("25 cents  will return one quarter") do
    expect((25).coin_combos).to(eq("[1, 0, 0, 0]"))
  end
end
