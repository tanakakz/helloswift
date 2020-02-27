
var target = "hoge"
var obj = "hemo"
var selector: String
var name: String = "fuga"
var count: Int = 1
target = obj; selector = name; count -= 1

let a:Int = 5
let b:Int
if a >= 0 {
  b = a
} else {
  b = -a
}
print(b)

let c = a >= 0 ? a : -a
print(c)

let val = 10032
var i = 1, mask = 2
while mask <= val {
  mask <<= 1
  i += 1
}

var n = 7
repeat {
  print("\(n) ", terminator:"") // 改行しない
  if n % 2 == 0 {
    n /= 2
  } else {
    n = n * 3 + 1
  }
} while n > 1
print(n) // 改行して終わり

for i in 1 ..< 10 {
        var line = ""
        for j in 1 ..< 10 {
                let n = i * j
                if n < 10 { line += " " }
                line += "\(n)"
        }
        print(line)
}

