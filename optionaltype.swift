var a : Int = 0
var b : Int? = 10

// a = nil // will error.
b = nil // allow

let olympic = "2020"
let year : Int? = Int(olympic)
let city : Int? = Int("Tokyo") // cannnot eval to Int, return nil

var year2 : Optional<Int> = Int("2020")

let year3 : Int? = Int("令和20年") // year is nil
// let next3 : Int = year3! + 4 // will error.

var year4 : Int? = Int("2020")
year4! += 4 // need publication. year is 2024

var nagano : Int? = Int("1998")
if nagano != nil { // true. not need publication
  print("Nagano: \(nagano!)") // need publicaiton
}
if nagano == 2020 { // false. not use publication
  print(2020)
}

var n: Int? = nil, t: Int? = 1000
print(String(describing: n), "+", String(describing: t))

let year5 : Int? = Int("1986")
if let y = year5 {
  print("ハレー彗星は\(y + 75)年にくる")
}

let halley : Int? = Int("1986")
if var halley = halley {
  print("ハレー彗星は\(halley)に来た")
  halley += 75
  print("次は\(halley)年だと予想される")
}

if let sapporo = Int("1972"), let nagano = Int("1998") {
  print("\(nagano - sapporo) years.")
}
