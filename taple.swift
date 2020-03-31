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

var (fibo1, fibo2) = (0, 1)
print(fibo1, terminator:" ")
for _ in 0 ..< 50 {
    (fibo1, fibo2) = (fibo2, fibo1 + fibo2)
    print(fibo1, terminator:" ")
}
print()

let photo2 = (file:"tiger.jpg", width:640, height:800)
print(photo2.0)
print(photo2.file)
