var a = 1, b = 2, c = 3, t = 4
if a >= 0 {
  b += a
  do {
    let t = a
    a = c
    c = t
    print(a, b, c, t)
  }
  print(a, b, c, t)
}

let blood = "O"
search: do {
  for t in [ "A", "B", "O", "AB" ] {
    if blood == t {
      print("見つかりました", t)
      break search
    }
  }
  print("見つかりませんでした")
}

