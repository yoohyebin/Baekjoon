let n = Int(readLine()!)!
var product = [Int]()
var free = 0

for _ in 0..<n {
    product.append(Int(readLine()!)!)
}
product.sort(by: >)

for i in stride(from: 2, to: n, by: 3) {
    free += product[i]
}

print(product.reduce(0, +) - free)
