func BMI(tall:Double, weight:Double) -> (Double, Double) {
  let ideal = 22.0
  let t2 = tall * tall / 10000.0
  let index = weight / t2
  return (index, ideal * t2)
}

let result = BMI(tall:177.0, weight:80.0)
print(result)

