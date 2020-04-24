struct Time {
  let hour, min : Int
  func advanced(min:Int) -> Time {
    var m = self.min + min
    var h = self.hour
    if m >= 60 {
      h = (h + m / 60) % 24
      m %= 60
    }
    return Time(hour:h, min:m)
  }
  func toString() -> String {
    let h = hour < 10 ? " \(hour)" : "\(hour)"
    let m = min < 10 ? "0\(min)" : "\(min)"
    return h + ":" + m
  }
}

let t1 = Time(hour:22, min:45)
let t2 = t1.advanced(min:140)
print(t1.toString())
print(t2.toString())

struct Clock {
  var hour = 0, min = 0
  mutating func advance(min:Int) {
    let m = self.min + min
    if m >= 60 {
      self.min = m % 60
      let t = self.hour + m / 60
      self.hour = t % 24
    } else {
      self.min = m
    }
  }
  mutating func inc() {
    self.advance(min: 1)
  }
  func toString() -> String {
    let h = hour < 10 ? " \(hour)" : "\(hour)"
    let m = min < 10 ? "0\(min)" : "\(min)"
    return h + ":" + m
  }
}
var tic = Clock(hour:19, min:40)
tic.advance(min:19)
tic.inc()
print(tic.toString())

struct SimpleDate {
  var year, month, day: Int
  static 
  func isLeap(_ y: Int) -> Bool {
    return (y % 4 == 0) && (y % 100 != 0 || y % 400 == 0)
  }
  static func daysOfMonth(_ m:Int, year:Int) -> Int {
    switch m {
    case 2: return isLeap(year) ? 29 : 28
    case 4, 6, 9, 11: return 30
    default: return 31
    }
  }
  func leapYear() -> Bool {
    SimpleDate.isLeap(year)
  }
}
print(SimpleDate.isLeap(2000))
print(SimpleDate.daysOfMonth(2, year:2000))
let d = SimpleDate(year:2024, month:11, day:7)
print("うるう年？ ", d.leapYear())

struct DateWithString {
  let string: String
  let year, month, day: Int
  init(_ y:Int, _ m:Int, _ d:Int) {
    year = y; month = m; day = d
    string = "\(y)-" + DateWithString.twoDigits(m) + "-" + DateWithString.twoDigits(d)
  }
  static func twoDigits(_ n:Int) -> String {
    let i = n % 100
    return i < 10 ? "0\(i)" : "\(i)"
  }
}
let an1 = DateWithString(2015, 6, 22)
print(an1.string)


