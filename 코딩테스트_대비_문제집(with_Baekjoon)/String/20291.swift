//424ms
let n = Int(readLine()!)!
var dict = [String: Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: ".").map{String($0)}[1]
    dict[input, default: 0] += 1
}

var result = dict.sorted(by: {
    $0.key < $1.key
})

for f in result {
    print("\(f.key) \(f.value)")
}

//232ms
let n = Int(readLine()!)!
var dict = [String: Int]()

for _ in 0..<n {
    let fileName = readLine()!
    let extensionName = String(fileName.suffix(from: fileName.index(of: ".")!).dropFirst())
    dict[extensionName, default: 0] += 1
}

for (extensionName, count) in dict.sorted(by: { $0.key < $1.key }) {
    print("\(extensionName) \(count)")
}
