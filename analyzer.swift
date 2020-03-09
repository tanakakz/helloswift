public struct RandGenerator : RandomNumberGenerator {
  private var rnd: UInt64
  init(seed:Int) {
    rnd = UInt64(seed)
    for _ in 0 ..< 10 { _ = self.next() }
  }
  public mutating func next() -> UInt64 {
    rnd = (rnd &* 10777) &+ 13577 // 混合合同法
    return rnd
  }
}

func analyzer(_ t: Int) -> [(String, Int)] {
  let elems = ["努力", "怠惰", "信念", "徹夜", "幸運", "偶然",
    "自信", "根性", "誤謬", "打算", "天啓", "不安"]
  var rnd = RandGenerator(seed: t)
  var rates = [Double]()
  for _ in 0 ..< 5 {
    rates.append(Double.random(in: 0.0 ..< 1.0, using: &rnd))
  }
  let total = rates.reduce(0.0, +)
  return [(String, Int)](zip(elems.shuffled(using:&rnd),
    rates.sorted(by:>).map { Int(Double($0 * 100) / total + 0.5) }))
}

print("あなたの名前: ", terminator:"")
if let name = readLine() {
  let chars = name.filter{ !$0.isWhitespace }
  let v = chars.unicodeScalars.reduce(0){ $0 &+ $1.value }
  print("\(name)さんのプログラムは、")
  for (elm, val) in analyzer(Int(v)) {
    print(" \(elm):\(val)%", terminator:"")
  }
  print(" でできています。")
}