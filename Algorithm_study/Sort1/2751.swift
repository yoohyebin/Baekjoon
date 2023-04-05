//1404ms
var array = [Int]()
for _ in 0..<Int(readLine()!)!{
    array.append(Int(readLine()!)!)
}
array = array.sorted()
for i in array{
    print(i)
}
