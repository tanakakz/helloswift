let stock = [ "01", "2", "4", "05", "8", "q", "X" ]
for str in stock {
  guard let v = Int(str) else {
    print(str + "??")
    break
  }
  print(v, terminator:" ")
}
