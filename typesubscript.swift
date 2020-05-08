struct Impression {
  static subscript(i:Int) -> String {
    let level = (i < 0) ? 0 : (i > 4 ? 4 : i)
    return ["😞", "😟", "😑", "🙂", "😃"][level]
  }
}
print(Impression[4])
