struct SimpleDate {
  var year: Int
  var month: Int
  var day: Int
}

let d = SimpleDate(year: 2010, month: 7, day: 28)
print(d)
// d.day = 10 // cannot it. "d" is imutable instance.