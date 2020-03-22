func mySwap(_ a: inout Int, _ b: inout Int) {
  let t = a; a = b; b = t
}
func mySwap(_ a: inout Int, _ b: inout Int, _ c: inout Int) {
  let t = a; a = b; b = c; c = t
}

var s = 10, t = 20
var x = 1, y = 2, z = 3

mySwap(&s, &t)
print("s=\(s), t=\(t)")

mySwap(&x, &y, &z)
print("x=\(x), y=\(y), z=\(z)")
