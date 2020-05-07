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

var st = Stock(price:400)
st.price = 410
st.price = 380
st.price = 430
print("\(st.count), \(st.high)")
