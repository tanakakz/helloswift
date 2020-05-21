func nickname(_ name:String?, age:Int) -> String {
  let s = name ?? "nanashi"
  return "naniwa no " + s + " (\(age)sai)"
}
nickname("sinderera", age:35)
nickname(nil, age:20)
