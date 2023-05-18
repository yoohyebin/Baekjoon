//472ms
let n = Int(readLine()!)!
var stringSet = Set<String>()
for _ in 0..<n {
    stringSet.insert(readLine()!)
}

for s in Array(stringSet).sorted(by:{
    if $0.count == $1.count {
        return $0 < $1
    }
    else{
        return $0.count < $1.count
    }
}) {
    print(s)
}

//52ms
let n = Int(readLine()!)!
var overlapedSet = Set<String>()
var words = [String]()

for _ in 0..<n {
    let input = readLine()!
    overlapedSet.insert(input)
}

words = Array(overlapedSet)
let tuple: [(Int, String)] = words.map { ($0.count , $0) }

print(tuple.sorted(by: {
    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
}).map { $1 }.joined(separator: "\n"))
