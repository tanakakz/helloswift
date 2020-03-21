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

func area(height h:Double, width w:Double) -> Double {
  return h * w
}
let here = area(height:10.0, width:12.5)
print(here)

func nonlabelarea(_ h:Double, _ w:Double) -> Double {
  return h * w
}
print(nonlabelarea(10.0, 12.5))

func compare(_ a:Int, _ b:Int, option _:Bool) {
}
compare(10, 8, option:true)

for _ in 1...10 {
  print("for loop index isn't used.")
}

func myswap(_ a: inout Int, _ b: inout Int) {
  let t = a; a = b; b = t
}
var x = 100, y = 0
myswap(&x, &y)
print(x, y)

let fontSize: Float = 12.0
func setFont(name:String, size:Float = fontSize, bold:Bool = false) {
  print("\(name) \(size)" + (bold ? " [B]" : ""))
}
setFont(name:"RaglanPunch")
setFont(name:"Courier", bold:true)
setFont(name:"Times", size:16.0, bold:true)

func setGray(level:Int = 255, _ alpha:Float = 1.0) {
  print("Glay=\(level), Alpha=\(alpha)")
}
setGray()
setGray(level:240)
setGray(level:128, 0.5)

func dayOfWeek(_ y:Int, _ m:Int, _ d:Int) -> Int {
  var y = y, m = m
  if m < 3 {
    m += 12; y -= 1
  }
  let leap = y + y / 4 - y / 100 + y / 400
  return (leap + (13 * m + 8) / 5 + d) % 7
}
print(dayOfWeek(2020, 3, 19))

@discardableResult
func sayHello(to n:String) -> Bool {
  print("Hello, \(n)!")
  return (n == "Swift")
}
sayHello(to:"World")
let res = sayHello(to:"Swift")
print(res)

func kuku81() {
  func cross(_ a:Int, _ b:Int) {
    print(a*b, terminator:" ")
  }
  for a in 1...9 {
    for b in 1...9 {
      cross(a, b)
    }
    print("")
  }
}
kuku81()

