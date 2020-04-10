func f() -> Bool {
  print("not called")
  return true
}
let g = f

let sw1 = false
var c1 = sw1 || f() //swがtrueならf()は実行しない。c1はtrue。

let sw2 = true
var c2 = sw2 && g() //swがfalseならg()は実行しない。c2はfalse。

let a: UInt8 = 1
for n in [ 2, 8, 10, -1 ] {
  print(a &<< n)
}

var z: UInt8 = 1
z = z &- 2 // z == 255. if calc z - 2 then error.
print(z)

infix operator 〜 : RangeFormationPrecedence // 二項演算子として宣言

func 〜 (n:Int, w:Int) -> String {
  var str = String(n)
  let pad = w - str.count
  if pad > 0 {
    str = String(repeating:" ", count:pad) + str
  }
  return str
}

for wid in [ 2, 4, 6 ] {
  for i in 1...5 {
    print(i + 7 〜 wid, terminator:"")
  }
  print()
}

postfix operator %

postfix func % (n:Int) -> Double {
  return 0.01 * Double(n)
}

postfix func % (r:Double) -> Double {
  return 0.01 * r
}

var price: Double = 19_800
print(price * 85% * 108%)

infix operator >? : AssignmentPrecedence

func >? (lhs: inout Double, rhs: Double) {
  if lhs < rhs { lhs = rhs }
}

var ia = 1.22
for x in [ 0.9, 1.25, -1.0, 2.0, 0.86 ] {
  ia >? x
}
print(ia)

precedencegroup RoundPrecedence {
  higherThan: AdditionPrecedence // +, - 
  lowerThan: MultiplicationPrecedence // *, /, %
}

infix operator %% : RoundPrecedence

func %% (lhs: Int, rhs: Int) -> Int {
  return lhs - lhs % rhs
}

print( 873151 %% 100 )
print( 1 + 7231 %% 10 * 2 )

