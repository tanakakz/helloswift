
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

let targetname = "koko"
let group = [ "jonah", "visha", "koko", "valmet", "tanya" ]
for s in group {
        if targetname == s {
                print("\(s) が見つかりました")
                break
        }
}

var x = Int.random(in: 0 ..< 10)
switch x {
        case 0: print("none")
        case 1: x += 1
        case 2, 3:
            print("a few")
        case 4, 5:
            print("some")
        default:
            print("several")
}

let 追試下限 = 45
var score = Int.random(in: 0 ..< 100)
switch score {
        case 追試下限..<75: print("追試験")
        case 90...100: print("秀")
        case 80..<90: print("優")
        case 70..<80: print("良")
        case 60..<70: print("可")
        default: print("不可")
}

