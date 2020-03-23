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

func mySwap(little a: inout Int, great b: inout Int) {
  if a > b {
    mySwap(&a, &b)
  }
}
var ls = 10, gt = 20
mySwap(little:&ls, great:&gt)
print("ls=\(ls), gt=\(gt)")
