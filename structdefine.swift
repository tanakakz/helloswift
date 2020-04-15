struct SimpleDate {
  var year: Int
  var month: Int
  var day: Int
}

let d = SimpleDate(year: 2010, month: 7, day: 28)
print(d)
// d.day = 10 // cannot it. "d" is imutable instance.

struct Time12h {
  let in24h: Bool = false
  var hour = 0, min = 0
}
var t1 = Time12h()
// var t2 = Time12h(in24h:true, hour:7, min:0) // will failure.
var t2 = Time12h(hour:7, min:0)

struct Time {
  let in24h: Bool
  var hour = 0, min = 0
}
var t3 = Time(in24h:true, hour:7, min:0)

struct SimpleDate2 {
  var year, month, day: Int
  init() {
    year = 2095; month = 10; day = 31
  } // can write this: self.year = 2095
}
var m = SimpleDate2()
print(m.year)

struct Time2 {
  let in24h: Bool
  var hour = 0, min = 0
  init(hour:Int, min:Int) {
    in24h = false
    self.hour = hour
    self.min = min
  }
  init(hourIn24 h:Int) {
    in24h = true
    hour = h
  }
  init(_ hour:Int) {
    self.init(hourIn24: hour)
    // in24h = false // will be error.
  }
}
var t21 = Time2(hour:10, min:30)
var t22 = Time2(hourIn24: 15)
var t23 = Time2(1)
// var t24 = Time2() // will be error.
// var t25 = Time2(in24h:true, hour:13, min:30) // will be error.
