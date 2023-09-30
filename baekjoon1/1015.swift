let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var sortedA = arr.sorted()
var p = [Int]()

for a in arr {
    p.append(sortedA.firstIndex(of: a) ?? 0)
    sortedA[sortedA.firstIndex(of: a) ?? 0] = -1
}

print(p.map{String($0)}.joined(separator: " "))
