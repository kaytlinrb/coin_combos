
class Fixnum
  define_method(:coin_combos)do
    coinarray= [25,10,5,1]
    newcoinarray =[]
    money = self
    coinarray.each() do |coin|
      num_coin = 0
      until money < coin
        num_coin+=1
        money -= coin
      end
      newcoinarray.push(num_coin)
    end
    newcoinarray.to_s()
  end
end
