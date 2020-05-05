struct FoodMenu {
  let menu = ["zaru", "kake", "tanuki"]
  var submenu = ["tororo", "tenpura", "nanban"]
  let count = 6
  
  subscript(i:Int) -> String {
    get {
      return i < 3 ? menu[i] : submenu[i - 3]
    }
    set {
      if i > 2 && i < 6 {
        submenu[i - 3] = newValue
      }
    }
  }
}
var menu = FoodMenu()
for i in 0 ..< menu.count {
  print(menu[i], terminator:" ")
}
print()
