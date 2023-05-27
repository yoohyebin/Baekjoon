//8ms
let values = readLine()!.split(separator: " ").map {Int(String($0))!}.sorted(by: >)
let set = Set<Int>(values)

if set.count == 3 {
    print(values[0] * 100)
} else if set.count == 2 {
    print(1000 + values[1] * 100)
} else {
    print(10000 + values[0] * 1000)
}
