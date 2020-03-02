let days = 31
let firstday = 2
var w = 0
while w < firstday {
  print("   ", terminator:"")
  w += 1
}
var d = 1
loop: while true {
  while w < 7 {
    let pad = d < 10 ? " " : ""
    print(pad + " \(d)", terminator:"")
    w += 1
    d += 1
    if d > days {
      print()
      break loop
    }
  }
  print()
  w = 0
}

