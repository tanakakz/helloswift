var str :String = "zero"
var val = Int(str) ?? 0 // if str is nil then val has 0

var x, y, z :String?
var val2 = x ?? y ?? z ?? "nothing"