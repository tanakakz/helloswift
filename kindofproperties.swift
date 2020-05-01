// type property
struct DateWithString {
  let string: String
  let year, month, day: Int
  static let mons = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
    "Aug", "Sep", "Oct", "Nov", "Dec"]
  static var longFormat = false
  
  init(_ y:Int, _ m:Int, _ d:Int) {
    year = y; month = m; day = d
    string = DateWithString.longFormat
             ? DateWithString.longString(y, m, d)
             : DateWithString.shortString(y, m, d)
  }
  static func twoDigits(_ n:Int) -> String {
    let i = n % 100
    return i < 10 ? "0\(i)" : "\(i)"
  }
  static func longString(_ y:Int, _ m:Int, _ d:Int) -> String {
    return "\(y)-" + twoDigits(m) + "-" + twoDigits(d)
  }
  static func shortString(_ y:Int, _ m:Int, _ d:Int) -> String {
    return twoDigits(d) + mons[m-1] + twoDigits(y)
  }
}
let a = DateWithString(2025, 1, 20)
print(a.string)

DateWithString.longFormat = true

let b = DateWithString(2025, 1, 21)
print(b.string)

// stored property
var serialNumber = 2127

struct LCD {
  struct Size { var width, height : Int }
  static var stdHeight = 1080
  static var stdWidth = 1920
  static var stdSize = Size(width: stdWidth, height: stdHeight)
  static func sn() -> Int { serialNumber += 1; return serialNumber }
  let size: Size
  let serial = "CZ:" + String(LCD.sn())
  
  init(size: Size = LCD.stdSize) {
    self.size = size
  }
  func show() {
    print(serial, "(\(size.width)x\(size.height))")
  }
}

let display1 = LCD(size: LCD.Size(width:800, height:600))
display1.show()

LCD.stdHeight = 1200
let display2 = LCD()
display2.show()

LCD.stdWidth = 2560
let display3 = LCD()
display3.show()

struct Ounce {
  var mL:Double = 0.0
  static let ounceUS = 29.5735
  
  init(ounce:Double) {
    self.ounce = ounce
  }
  var ounce: Double {
    get { mL / Ounce.ounceUS }
    set { mL = newValue * Ounce.ounceUS }
  }
}
var oa = Ounce(ounce:2.0)
print(oa.mL)
oa.ounce += 8.0
print(oa.ounce)
