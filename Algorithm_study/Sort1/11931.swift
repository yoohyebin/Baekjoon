//1356ms
var N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

for i in arr.sorted(by: >) {
    print(i)
}
