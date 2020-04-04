func f() -> Bool {
  print("not called")
  return true
}
let g = f

let sw1 = false
var c1 = sw1 || f() //swがtrueならf()は実行しない。c1はtrue。

let sw2 = true
var c2 = sw2 && g() //swがfalseならg()は実行しない。c2はfalse。
