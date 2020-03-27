let b = ("bird.jpg", 161_022)
let c : (String, Int) = ("cat.jpg", 234_341)

let cat = ("cat.jpg", 1024, 768)
var img : (String, Int, Int) = cat
// img = c // Error. different type

print("\(img.0): \(img.1)x\(img.2)")
img.2 = 800
print("\(img.1)x\(img.2)")

let photo = ("tiger.jpg", 640, 800)
let (file, width, height) = photo
print("\(file): \(width)x\(height)")
