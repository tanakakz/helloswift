var total = 0

func count(n: Int) -> Int {
 total += n
 return total 
}

func reset() { total = 0 }

reset()
let a = 10
let b = count(n: a - 5)
print("\(b)")
print("\(count(n: a))")
reset()
print("\(count(n: -2))")

func buy(product:Int, price:Int, quantity:Int) {
  print("Product:\(product), amount = \(price * quantity)")
}

buy(product:19090, price:180000, quantity:1)

func messageA() -> String {
  return "現在の値は\(total)です。"
}
func messageB() -> String { "現在の値は\(total)です。" }

print(messageA())
print(messageB())
