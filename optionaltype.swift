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
