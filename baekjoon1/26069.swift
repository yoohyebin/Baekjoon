//12ms
let n = Int(readLine()!)!
var set: Set = ["ChongChong"]

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    if set.contains(input[0]) || set.contains(input[1]){
        set.insert(input[0])
        set.insert(input[1])
    }
}

print(set.count)
