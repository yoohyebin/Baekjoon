//100ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]
var set1 = Set<String>(), set2 = Set<String>()

for _ in 0..<n {
    set1.insert(readLine()!)
}
for _ in 0..<m {
    set2.insert(readLine()!)
}

let arr = set1.intersection(set2).sorted()
print(arr.count)
print(arr.joined(separator: "\n"))

//76ms
var a: Set<String> = []
var b: Set<String> = []
let inputs = readLine()!.split(separator: " ").map { Int($0)! }
for _ in 0 ..< inputs[0] {
    a.insert(readLine()!)
}
for _ in 0 ..< inputs[1] {
    let name = readLine()!
    if a.contains(name) { b.insert(name) }
}
print(b.count)
for ret in b.sorted(by: <) {
    print(ret)
}
