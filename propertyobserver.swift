struct Stock {
  let buyingPrice: Int
  var high = false
  var count = 0
  
  init(price:Int) {
    buyingPrice = price
    self.price = price
  }
  var price:Int {
    willSet {
      count += 1
      high = newValue > buyingPrice
    }
    didSet {
      print("\(oldValue) => \(price)")
    }
  }
}
