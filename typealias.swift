struct SimpleTime {
  var hour, min: Int
  init(_ hour:Int, _ min: Int) {
    self.hour = hour
    self.min = min
  }
}

struct PointOfTime {
  struct Date { var year, month, day: Int }
  typealias Time = SimpleTime
  var date: Date
  var time: Time
  init(year:Int, month:Int, day:Int, hour:Int, min:Int) {
    date = Date(year:year, month:month, day:day)
    time = Time(hour, min)
  }
}

