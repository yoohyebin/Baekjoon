//184ms
let N = Int(readLine()!)!
var person = [(Int, String)]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{String($0)}
    person.append((Int(input[0])!, input[1]))
}

for i in person.sorted(by: {$0.0 < $1.0}){
    print("\(i.0) \(i.1)")
}


//152ms
typealias Person = (Int, Int, String)
let N = Int(readLine()!)!
var arr: [Person] = []
var result: String = ""
for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { String($0) }
    arr.append(Person(i, Int(line[0])!, line[1]))
}
arr.sort(by: { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 })
for curr in arr { result += "\(curr.1) \(curr.2)\n" }
print(result)
