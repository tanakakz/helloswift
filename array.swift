
var a1 = [ 2, 5, 8, 11, 7 ]
var a2 : [Int] = [ 1, 3, 5, 7, 9 ]
print(a1, a2)

var s1 = [String]()
var s2 : [String] = []
print(s1, s2)

var g = 1.2
var f = [ g/2.0, g/0.3, g/0.04 ]
print(f)

let digits = [ "00", "01", "02", "03" ]
print(digits[2])
print(digits.count)

var nums = digits
nums[2] = "Two"
//digits[2] = "Two"
print(digits[2])
print(nums)

var roman = ["I", "II", "III"]
roman.append("IV")
print(roman)

let m = roman + ["5", "6"]
print(m)

roman += ["V", "VI"]
print(roman)

