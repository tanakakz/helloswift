func nickname(_ name:String?, age:Int) -> String {
  let s = name ?? "nanashi"
  return "naniwa no " + s + " (\(age)sai)"
}
print(nickname("sinderera", age:35))
print(nickname(nil, age:20))
